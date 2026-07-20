cask "charles@4" do
  version "4.6.8"
  sha256 "7215d78fd72c2011914f565afa18849b5885588735ce00c5b85c34f5b5711f56"

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/"

  livecheck do
    url "https://www.charlesproxy.com/documentation/version-history/"
    regex(/Version (4(?:\.\d+)+)/i)
  end

  conflicts_with cask: "charles"
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

  caveats do
    requires_rosetta
  end
end
