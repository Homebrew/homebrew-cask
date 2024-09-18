cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.1"
  sha256 arm:   "ea117e9d6491a1921469a0ebc274e0d646f14fc8cd059474759e3980b247dc2d",
         intel: "05422dbac0a00ebbf8360f782f2cda16a768a22abb25cc3a06fb418d1e471194"

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
