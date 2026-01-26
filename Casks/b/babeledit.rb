cask "babeledit" do
  version "5.5.1"
  sha256 "c5a5677633ae010c02965456c529493b5a39b302be82b268fefa894152fc2cd8"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/releases/babeledit/updatecheck.php?b=no&o=mac"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
