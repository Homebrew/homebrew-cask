cask "gama-jdk" do
  arch arm: "_M1"

  version "2025.06.3"
  sha256 arm:   "cbcd3c7ae976f36a1c9377cd065b71fde869bf9cc712010505949c4a316c80b8",
         intel: "0594af1dd3cc7b88c6876cbb45b13890568e1dbc6f148c180360c3537b1a100b"

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

  no_autobump! because: :requires_manual_review

  conflicts_with cask: "gama"

  app "Gama.app"

  zap trash: [
    "~/Gama_Workspace",
    "~/Library/Preferences/Gama.plist",
  ]
end
