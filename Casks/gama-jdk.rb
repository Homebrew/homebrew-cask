cask "gama-jdk" do
  arch arm: "Apple_Silicon", intel: "Intel"

  version "1.9.1"
  sha256 arm:   "bad8a2da2ebe6a0276fef3539416625dce75118cef5ffc5fcd3e84b94d5f6b60",
         intel: "98ccfa0fd0393cf0e4283ccf6c9ba16d2980464bf40012574882a879f013c358"

  url "https://github.com/gama-platform/gama/releases/download/#{version}/GAMA_#{version}_macOS_#{arch}_with_JDK.dmg",
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
