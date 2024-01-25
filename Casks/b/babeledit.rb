cask "babeledit" do
  version "5.1.1"
  sha256 "0ebf27fc9c0824af83f868f0264984a3e5ee59d7a206ef175e6c11e817cbcffa"

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
