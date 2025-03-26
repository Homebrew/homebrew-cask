cask "babeledit" do
  version "5.4.0"
  sha256 "eaaad7be54f308e3f54f836e8d01ab283edfaa41a3893b5a905dd1d5a047dbef"

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
