cask "gama-platform" do
  arch arm: "_M1"

  version "2025.06.3"
  sha256 arm:   "a4726c23844d51b3fac7eb77e80d86cc2d157e7ad76c2558e97530395c908a78",
         intel: "049045578b0cf17568a75fc041eca16c234e5f3c3ac3f384a8bae4c7a0533ccd"

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

  no_autobump! because: :requires_manual_review

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
