cask "sigil" do
  version "1.4.3"
  sha256 "e31b0a19e3c39e1b9aca350e8cba87262ab0132d04c6fdc99853d7e9ce0ed567"

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
