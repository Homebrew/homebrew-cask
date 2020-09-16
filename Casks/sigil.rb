cask "sigil" do
  version "1.3.0"
  sha256 "8adb6e959c02e982a07cd848e7e20f832424dc9a92620fbbc0a59f8791fa7859"

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
