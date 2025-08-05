cask "gama-jdk" do
  arch arm: "_M1"

  version "2025.06.4"
  sha256 arm:   "6b2c112a7783ecd77ae27a635990f44abe7eddfd52acfcf8398663b335c96300",
         intel: "8efe8e87965692b3be9633c86b7105def03368bd1bbbbbb101d39ebb5c08d62f"

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
