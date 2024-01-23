cask "babeledit" do
  version "5.1.0"
  sha256 "967057eab4449ad6777074c90614b28d1598d64f57ffeda7bd9103e5a4c96667"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/babeledit/download"
    regex(%r{babeledit/download/v?(\d+(?:\.\d+)+)/mac-64}i)
  end

  auto_updates true

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
