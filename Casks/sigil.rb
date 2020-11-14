cask "sigil" do
  version "1.4.0"
  sha256 "b50cf323898e7ec37cd12a323da79787999dd92040612bed2e283dece8af5dbe"

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
