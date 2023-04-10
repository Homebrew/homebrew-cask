cask "gama-jdk" do
  arch arm: "_M1"

  version "1.9.0"
  sha256 arm:   "18b6d4d639825f7b8d517f7d0f065db875459fa15e641111ca185616e9a1da17",
         intel: "7e8018f05acda1bee41c9747d58cd3f765645cbc1ea74764abe8a1069eda04a9"

  url "https://github.com/gama-platform/gama/releases/download/#{version}/GAMA_#{version}_MacOS#{arch}_with_JDK.dmg",
      verified: "github.com/gama-platform/gama/"
  name "GAMA Platform with embedded JDK"
  desc "IDE for building spatially explicit agent-based simulations"
  homepage "https://gama-platform.org/"

  # Using :github_latest as repo contains pre-release tags
  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "gama"

  app "Gama.app"

  zap trash: [
    "~/Gama_Workspace",
    "~/Library/Preferences/Gama.plist",
  ]
end
