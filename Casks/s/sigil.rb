cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "78738f5e4394c1715a4471baf66589ab9faa0db62cdbb987efec5ca21c1b202d",
         intel: "22820b54837ee32dcc8bb6dfebfebcfb95e45311dbd4e8e852a6c0e20186af58"

  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-Mac-#{arch}.txz",
      verified: "github.com/Sigil-Ebook/Sigil/"
  name "Sigil"
  desc "EPUB ebook editor"
  homepage "https://sigil-ebook.com/"

  depends_on macos: ">= :big_sur"

  app "Sigil.app"

  zap trash: [
    "~/Library/Application Support/sigil-ebook",
    "~/Library/Preferences/com.sigil-ebook.Sigil.app.plist",
    "~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState",
  ]
end
