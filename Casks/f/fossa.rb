cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.15"
  sha256 arm:   "2042f6b5f7b93e28948c4ebcbb76b240379fdab467640d4842d3de50ea0f47c3",
         intel: "4f7cec3e585683f23e609da499dcdabc9ef7af74daadd9c931aa91b1b9f14653"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  # No zap stanza required
end
