cask "babeledit" do
  version "5.7.0"
  sha256 "9c548d07b385b53bc6a514a11c74b41a1d4e2ba9a38cc232b613a1d7f7668b8e"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/releases/babeledit/updatecheck.php?b=no&o=mac"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "BabelEdit.app"

  uninstall quit: "de.code-and-web.BabelEdit"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
