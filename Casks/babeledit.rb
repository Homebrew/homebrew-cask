cask "babeledit" do
  version "2.9.2"
  sha256 "459b46c4b9d669cca8c5cb07082f2f89890ca19ed23648ea1b50761a0ab758d6"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/babeledit/download"
    regex(/BabelEdit[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
