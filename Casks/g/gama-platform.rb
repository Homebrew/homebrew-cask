cask "gama-platform" do
  arch arm: "_M1"

  version "2025.06.4"
  sha256 arm:   "2778f3434d26b4035737026cd4077e81c18aae3773119480e907f9fd714d66f7",
         intel: "b0e732958030cdac0942dd4a105befc08ec1fc353f66c076d5e78d8212765917"

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
    depends_on_java "21"
  end
end
