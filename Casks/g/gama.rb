cask "gama" do
  arch arm: "_M1"

  version "1.9.2"
  sha256 arm:   "dfc74a0004a32302f0eee9303b5c45f83a9e66307e3d4fe30999de1eeb1a00e6",
         intel: "cad4827fcf2e8eb06459b6e8d7468537831fdcccaf2ee896171c6168cb03de74"

  url "https://github.com/gama-platform/gama/releases/download/#{version}/GAMA_#{version}_MacOS.dmg",
      verified: "github.com/gama-platform/gama/"
  name "GAMA Platform"
  desc "IDE for building spatially explicit agent-based simulations"
  homepage "https://gama-platform.org/"

  # Using :github_latest as repo contains pre-release tags
  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "gama-jdk"

  app "Gama.app"

  zap trash: [
    "~/Gama_Workspace",
    "~/Library/Preferences/Gama.plist",
  ]

  caveats do
    depends_on_java "17"
  end
end
