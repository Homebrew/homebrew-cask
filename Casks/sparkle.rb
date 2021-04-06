cask "sparkle" do
  version "1.26.0"
  sha256 "8312cbf7528297a49f1b97692c33cb8d33254c396dc51be394e9484e4b6833a0"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz",
      verified: "github.com/sparkle-project/Sparkle/"
  name "Sparkle"
  homepage "https://sparkle-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sparkle Test App.app"
end
