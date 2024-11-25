cask "babeledit" do
  version "5.2.1"
  sha256 "1ffbf7fcc89744d9b061f0a4339f8d775e626fadc0b371dc456cbe0ff4ebaf43"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/releases/babeledit/updatecheck.php?b=no&o=mac"
    strategy :sparkle
  end

  auto_updates true

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
