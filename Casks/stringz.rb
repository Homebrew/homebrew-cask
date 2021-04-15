cask "stringz" do
  version "0.7.0"
  sha256 "709cf19f9359a9a3a7740c888c49ee59120c96256354126113deed45dab7d3c5"

  url "https://github.com/mohakapt/Stringz/releases/download/v#{version}/Stringz-#{version}.dmg"
  name "Stringz"
  desc "Editor for localizable files"
  homepage "https://github.com/mohakapt/Stringz"

  app "Stringz.app"

  zap trash: [
    "~/Library/Application Support/dev.stringz.stringz",
    "~/Library/Caches/dev.stringz.stringz",
    "~/Library/Preferences/dev.stringz.stringz.plist",
  ]
end
