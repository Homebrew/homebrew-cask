cask "stringz" do
  version "0.5.1"
  sha256 "c234949722e30b68b16f68c79fd19ed80a03add47c30784b89ba7c6163c25a63"

  url "https://github.com/mohakapt/Stringz/releases/download/v#{version}/Stringz-#{version}.dmg"
  appcast "https://github.com/mohakapt/Stringz/releases.atom"
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
