cask "gama-jdk" do
  arch arm: "_M1"

  version "1.9.3"
  sha256 arm:   "f26215c0069e9e633db327a6ca70d478316ef5ca564409fc262d94ce27380f13",
         intel: "0c4daee9770693367a5d075e92c91dc036ead25029408c318361d55bf96bdf93"

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
