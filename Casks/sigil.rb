cask "sigil" do
  version "1.4.1"
  sha256 "705e96271fb6cc49b510a5b2ced206134b1ab9838c639e3f76f39333ca69d2cd"

  # github.com/Sigil-Ebook/Sigil/ was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-Mac.txz"
  appcast "https://github.com/Sigil-Ebook/Sigil/releases.atom"
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
