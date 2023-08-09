cask "charles" do
  version "4.6.4"
  sha256 "ab9c355750c9c3ba23b5f784831d3eb63fc5df71cf937c5175c451dc0b3acfdd"

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/"

  livecheck do
    url "https://www.charlesproxy.com/latest.do"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

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

  uninstall quit:      "com.xk72.Charles",
            launchctl: "com.xk72.Charles.ProxyHelper",
            delete:    "/Library/PrivilegedHelperTools/com.xk72.Charles.ProxyHelper"

  zap trash: [
    "~/Library/Application Support/Charles",
    "~/Library/Preferences/com.xk72.Charles.plist",
    "~/Library/Preferences/com.xk72.charles.config",
    "~/Library/Saved Application State/com.xk72.Charles.savedState",
  ]
end
