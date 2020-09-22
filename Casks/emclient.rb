cask "emclient" do
  version "8.0.2958.0"
  sha256 "236ced99ef79c3d4973d4a9a69bba03a7d0e29586035823f20f8f70bf2426d83"

  url "https://www.emclient.com/dist/latest/setup.pkg"
  appcast "https://www.emclient.com/release-history?os=mac"
  name "eM Client"
  desc "Email client"
  homepage "https://www.emclient.com/"

  auto_updates true

  pkg "setup.pkg"

  uninstall pkgutil: "com.emclient.mail.client.pkg"

  zap trash: [
    "~/Library/Caches/com.emclient.mail.client",
    "~/Library/Preferences/com.emclient.mail.client.plist",
    "~/Library/Preferences/com.emclient.mail.repair.plist",
    "~/Library/Preferences/com.emclient.mail.shared.plist",
    "~/Library/Saved Application State/com.emclient.mail.client.savedState",
  ]
end
