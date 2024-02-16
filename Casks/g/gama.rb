cask "gama" do
  arch arm: "_M1"

  version "1.9.3"
  sha256 arm:   "4bbf0e564af9f66f35b8791bbc9aa27fa3246efdf85276a2cb2f294007c41626",
         intel: "079c17dabb532cd44e494f04714cb6a631b26ed175726f540a99c814f3025614"

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
