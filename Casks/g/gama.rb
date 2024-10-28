cask "gama" do
  arch arm: "_M1"

  version "2024.10.0"
  sha256 arm:   "c2b98db3f7807ae290dec3b18c55b30236f846743db8117556c45f9870212986",
         intel: "84ec21450153a6296851e987a58a8f147e17729980eaf5ec32f5bca64e2c40de"

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
