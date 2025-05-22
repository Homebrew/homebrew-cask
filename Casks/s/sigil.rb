cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.2"
  sha256 arm:   "5e03c9ad00b40cca2aadac88adb957a24a57be4c0ef088fea50c097e00f88d42",
         intel: "f1dc45ae6de8788d9fc9e9172020a3851d3185179588daf9b05322b8ab89ecb2"

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
  depends_on macos: ">= :big_sur"

  app "Sigil.app"

  zap trash: [
    "~/Library/Application Support/sigil-ebook",
    "~/Library/Preferences/com.sigil-ebook.Sigil.app.plist",
    "~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState",
  ]
end
