cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.8.1"
  sha256 arm:   "82d68c8ed64bd83359ccc7cfd19760a1e0ac3b7d793e29b4891bfe86338ed807",
         intel: "7ac6674a85c67b9101a0623a5fc5173ac94727fafb615eb6e72ea3d57001c30c"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "orcasheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
