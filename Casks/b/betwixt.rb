cask "betwixt" do
  version "1.6.1"
  sha256 "a97f893e8bc7611dfde66ae75775a829c4d25959b946276aacf32cc8485c4054"

  url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-darwin-x64.zip"
  name "Betwixt"
  desc "Web Debugging Proxy based on Chrome DevTools Network panel"
  homepage "https://github.com/kdzwinel/betwixt"

  deprecate! date: "2025-04-21", because: :unmaintained
  disable! date: "2026-04-30", because: :unmaintained

  depends_on :macos

  app "Betwixt-darwin-x64/Betwixt.app"

  uninstall_postflight_steps do
    delete_keychain_certificate "NodeMITMProxyCA",
                                matching_certificate: "~/Library/Application Support/betwixt/ssl/certs/ca.pem"
  end

  zap trash: [
    "~/Library/Application Support/betwixt",
    "~/Library/Caches/betwixt",
    "~/Library/Preferences/com.electron.betwixt.plist",
    "~/Library/Saved Application State/com.electron.betwixt.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
