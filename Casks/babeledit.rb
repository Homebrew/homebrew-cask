cask "babeledit" do
  version "2.7.1"
  sha256 "35cda2ef972422d651f47cf983de7a030f8f2c5f15d9d6c9e9067d3fad75fb7e"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  appcast "https://www.codeandweb.com/babeledit/download",
          must_contain: version
  name "BabelEdit"
  homepage "https://www.codeandweb.com/babeledit"

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
