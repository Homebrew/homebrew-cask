cask "google-japanese-ime" do
  version "2.25.4030"
  sha256 :no_check

  url "https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      verified: "dl.google.com/japanese-ime/"
  name "Google Japanese Input Method Editor"
  homepage "https://www.google.co.jp/ime/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.google.inputmethod.Japanese"].short_version
    end
  end

  pkg "GoogleJapaneseInput.pkg"

  uninstall pkgutil:   "com.google.pkg.GoogleJapaneseInput",
            launchctl: [
              "com.google.inputmethod.Japanese.Converter",
              "com.google.inputmethod.Japanese.Renderer",
            ]
end
