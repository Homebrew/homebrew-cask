cask "gama" do
  arch arm: "_M1"

  version "1.9.0"
  sha256 arm:   "1d2e5cded850dbc7f9a72c454e3d6088b50fa48ef546b8b43ffd00645e8462a8",
         intel: "ac2478c140b428f6daad2a638d6c2a8c853d99fbce85a199b363048df5fdef6d"

  url "https://github.com/gama-platform/gama/releases/download/#{version}/GAMA_#{version}_MacOS#{arch}.dmg",
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
