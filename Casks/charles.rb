cask "charles" do
  version "4.6"
  sha256 "d216876b3cefd59b7a14f0a51172fcfee115800cf094d025046f4ea9a194a782"

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast "https://www.charlesproxy.com/latest.do"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/"

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
