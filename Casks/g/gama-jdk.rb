cask "gama-jdk" do
  arch arm: "_M1"

  version "2024.10.0"
  sha256 arm:   "71ebb0a59acbae57c49e8d450e439985e5174ffa3ce11bebd48f806831b84b41",
         intel: "2b0f887dd78d353210fc121941b544a1d8859b89c5eaca7bc6e7dc1b1dc6b84d"

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
