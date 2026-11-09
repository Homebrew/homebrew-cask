cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.6"
  sha256 arm:   "3be3be094745dfec892a02ac2f8d90934d4da2dc595ec1a95a8525f9ad27efd6",
         intel: "ea81d6bcd2c14f319e9e034506b8abd3f8f03e0792620e22271a75318286ca15"

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
