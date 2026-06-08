cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.0"
  sha256 arm:   "cb19ef4f27c78a0168bce37fa73f99cc6d2b0be72a2649bf76b1d4e25222a11c",
         intel: "4461bd2e1b88b7409500da3d5cc6dc5318552e23fe9ad43535cd1c4409f0d456"

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
