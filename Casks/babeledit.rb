cask "babeledit" do
  version "2.8.0"
  sha256 "4bbd8612c10aa70eab9451b4b9c266b0f313d5e54b7b8768a8d778623e510e82"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  appcast "https://www.codeandweb.com/babeledit/download",
          must_contain: version
  name "BabelEdit"
  homepage "https://www.codeandweb.com/babeledit"

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
