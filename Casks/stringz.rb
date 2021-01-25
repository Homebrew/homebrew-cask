cask "stringz" do
  version "0.6.3"
  sha256 "dd01a242252d137a8d6f1b45c679b6bde8a61f622b86ef4a0e27f3a8cbaab249"

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
