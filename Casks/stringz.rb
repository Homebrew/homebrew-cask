cask "stringz" do
  version "0.6.2"
  sha256 "fe1b387d8d7fff93b0d7ac7c1e7cffaef395bd66b3ffb80d61e27b9595e15908"

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
