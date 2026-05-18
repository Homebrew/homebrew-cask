cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.7"
  sha256 arm:   "f15e2e0cbec8dca13abed8b0792c363f734a52c27a68cb32dd9f159074d5590b",
         intel: "21d3d364626e571edaf9ecb5f9c3d3fcf20f413be96b056f7478931012d4d432"

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
