cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.1.6"
  sha256 arm:   "c1988288127d887baa6758b0b1e34232dda4238bad627d30f80cc059538ee794",
         intel: "aeb31232955c32554cf422da1fc3132801cf1c5ee282b8a1f22516494b8c1452"

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
