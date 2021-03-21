cask "stringz" do
  version "0.6.5"
  sha256 "4acf81f3f19d0fd8483347811575f9f0414d668c3d22b95c67ce2f47042ea4c2"

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
