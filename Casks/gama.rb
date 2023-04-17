cask "gama" do
  arch arm: "Apple_Silicon", intel: "Intel"

  version "1.9.1"
  sha256 arm:   "360e06ab4a864897b00e82e0603869ca52e4ee5e713ffddd41713765c3ed3946",
         intel: "19d967383e0138253e392e005eb6e1eeb248a6783a11aae4ea291cfef405fff5"

  url "https://github.com/gama-platform/gama/releases/download/#{version}/GAMA_#{version}_macOS_#{arch}.dmg",
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
