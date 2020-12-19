cask "google-hangouts" do
  version "5.41.3.0"
  sha256 :no_check

  url "https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg"
  name "Google Hangouts"
  homepage "https://www.google.com/tools/dlpage/hangoutplugin"

  pkg "Google Voice and Video.pkg"

  uninstall pkgutil: [
    "com.google.pkg.GoogleVoiceAndVideo",
    "com.google.pkg.Keystone",
  ]
end
