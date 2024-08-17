cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "645bcccfb6074ca0559b0d5821edc00def1d2629e25036fec8a4a5ded05b2146",
         intel: "1ff04e5370828daa42457e095b14e9dd4bd62705cfe26f222a34c6a66250a569"

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
