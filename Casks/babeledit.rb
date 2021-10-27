cask "babeledit" do
  version "2.9.0"
  sha256 "e822497de619b0eae19201931b5619d910279bcf69947726a85b411216d280e5"

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
