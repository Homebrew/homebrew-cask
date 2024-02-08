cask "gama-jdk" do
  arch arm: "_M1"

  version "1.9.2"
  sha256 arm:   "c9b1307df181137e58a39966b5d332bc8e145a823ba189f93e489cf75a214234",
         intel: "1d428e832dbe1778b9b90209052418a941a0549f7653b7e3977ac5980738a1fc"

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
