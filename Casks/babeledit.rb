cask "babeledit" do
  version "3.0.1"
  sha256 "f0dfe05bead574b454e483328198e0ce89fea44466e4110e2a385cc092b98d26"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/babeledit/download"
    regex(%r{babeledit/download/v?(\d+(?:\.\d+)+)/mac-64}i)
  end

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
