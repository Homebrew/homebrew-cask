cask "gama-jdk" do
  arch arm: "_M1"

  version "1.9.3"
  sha256 arm:   "d0da0a48624463070d9f53661f22fefef8a04fc32b539c475bda650924918c6d",
         intel: "ddba5ffdf43c57ca7a8bc619682f070bf2ff60e8aff8497f1ea3de4d6eeeb6a4"

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
