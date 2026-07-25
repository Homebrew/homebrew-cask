cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.1"
  sha256 arm:   "285addb9abee1d69c913d6a6b504240946b5274fd2193942ed59697536279afe",
         intel: "32f625fbdace147e5a94cf8c7167439f9e53afaa2a902d93b230363bc8935f53"

  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-Mac-#{arch}.txz",
      verified: "github.com/Sigil-Ebook/Sigil/"
  name "Sigil"
  desc "EPUB ebook editor"
  homepage "https://sigil-ebook.com/"

  livecheck do
    url "https://raw.githubusercontent.com/Sigil-Ebook/Sigil/master/version.xml"
    strategy :xml do |xml|
      xml.elements["//current-version"]&.text&.strip
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Sigil.app"

  zap trash: [
    "~/Library/Application Support/sigil-ebook",
    "~/Library/Preferences/com.sigil-ebook.Sigil.app.plist",
    "~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState",
  ]
end
