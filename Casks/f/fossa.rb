cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.1"
  sha256 arm:   "f7023c733ea1a7e909d58c2470ac5d1c27ac291c9c988aa230bb4394d9c3204a",
         intel: "5a6bc9122ac5f8698d2101b122431df13fb01c17ee3df4880852cacd46e26e4f"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required
end
