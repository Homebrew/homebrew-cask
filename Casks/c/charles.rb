cask "charles" do
  version "5.2.2"
  sha256 "560e10c31bb2e680b9b9dadf0fb66450289bd22b4a68bcac5a13a8cce52d9f05"

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/"

  livecheck do
    url "https://www.charlesproxy.com/latest.do", post_json: {}
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "charles@4"
  depends_on :macos

  app "Charles.app"

  uninstall_postflight_steps do
    delete_keychain_certificates "Charles"
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
