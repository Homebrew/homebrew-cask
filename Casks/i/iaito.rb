cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.1.8"
  sha256 arm:   "1cd44be217210a693d5c297eafe95c66f0ed634e9eb087b97d3ea8e27bcd6018",
         intel: "6234f070ebc8d74b29e8b6790cf7ba1df44ce8766e7e257e0535b5d04c47dfde"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg",
      verified: "github.com/radareorg/iaito/"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "iaito.app"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
