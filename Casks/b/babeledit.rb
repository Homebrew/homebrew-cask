cask "babeledit" do
  version "5.4.1"
  sha256 "7369ef5ac7a82cafe290d2c5cbc7b7afa5517164056a8cc9e644076d493f1683"

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
