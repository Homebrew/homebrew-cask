cask "babeledit" do
  version "2.8.0"
  sha256 "4bbd8612c10aa70eab9451b4b9c266b0f313d5e54b7b8768a8d778623e510e82"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/babeledit/download"
    strategy :page_match
    regex(/BabelEdit-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
