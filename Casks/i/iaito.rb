cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.1.4"
  sha256 arm:   "6ff74d592754b31c0d2845b072edd9ea0eb55dd558c97660b772b0e4f0fcb2b4",
         intel: "4ff55b25f9a8795735b987395cb5cd5d0f2d0b8e7009e35b5adea057ec5a3ccb"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg",
      verified: "github.com/radareorg/iaito/"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "iaito.app"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
