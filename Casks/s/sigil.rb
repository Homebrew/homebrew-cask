cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.6"
  sha256 arm:   "e0a50463c339d384dc00905ca5f0ad27fa17b606245e7b281e7e7792037033f2",
         intel: "6e65f57472de6255651ef74347192f571b81078f1ac0885502405d2df15e2712"

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
  depends_on macos: ">= :ventura"

  app "Sigil.app"

  zap trash: [
    "~/Library/Application Support/sigil-ebook",
    "~/Library/Preferences/com.sigil-ebook.Sigil.app.plist",
    "~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState",
  ]
end
