cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.5"
  sha256 arm:   "14b5d12373e43d44a9bc4e29e93310b7ac2bde0d80dc8a962e29fe88402c7536",
         intel: "0b55b7f93107abaf179dcf4b2597c6feab030bb6b79485c82c739af9d5a5c08d"

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
