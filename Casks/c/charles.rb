cask "charles" do
  version "5.0.2"
  sha256 "58ccec6d3ffb283f6ac3d03ca9da7e3a601de90246f16184988801a8ee2645b5"

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/"

  livecheck do
    url "https://www.charlesproxy.com/latest.do", post_json: {}
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "charles@4"

  app "Charles.app"

  uninstall_postflight do
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "Charles", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    hashes.each do |h|
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", h],
                     sudo: true
    end
  end

  uninstall launchctl: "com.xk72.Charles.ProxyHelper",
            quit:      "com.xk72.Charles",
            delete:    "/Library/PrivilegedHelperTools/com.xk72.Charles.ProxyHelper"

  zap trash: [
    "~/Library/Application Support/Charles",
    "~/Library/Preferences/com.xk72.charles.config",
    "~/Library/Preferences/com.xk72.Charles.plist",
    "~/Library/Saved Application State/com.xk72.Charles.savedState",
  ]
end
