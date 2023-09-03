cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "e6c2891534c863c2b0903971d35b46f51b080b763a8054a5071f4d0e78a247c4",
         intel: "39e5e8074a488e3d138f4619f2a788bceadfedb15264b23b508d62487875b8c0"

  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-Mac-#{arch}.txz",
      verified: "github.com/Sigil-Ebook/Sigil/"
  name "Sigil"
  desc "EPUB ebook editor"
  homepage "https://sigil-ebook.com/"

  depends_on macos: ">= :sierra"

  app "Sigil.app"

  zap trash: [
    "~/Library/Application Support/sigil-ebook",
    "~/Library/Preferences/com.sigil-ebook.Sigil.app.plist",
    "~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState",
  ]
end
