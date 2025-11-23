cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.0.4"
  sha256 arm:   "16624cf04ccac60315282432f5f104ee32f17d71a702a4a3fd3e7e7b42e31a01",
         intel: "1517beefc6b9bba5588a1575698afca22e1ac7974e5a825d09cf012b16648ae0"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg",
      verified: "github.com/radareorg/iaito/"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "iaito.app"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
