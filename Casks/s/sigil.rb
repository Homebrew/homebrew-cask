cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.5"
  sha256 arm:   "94b9d01fa556ccbad803b361a4876bda625054a49e4c93c531d5daa9921ed86d",
         intel: "e2696635cc9f35a70d4b6bf7bb89ea9ba2ef5072a6bdc1d8bbc7e9b12a0d5a0d"

  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-Mac-#{arch}.txz"
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
