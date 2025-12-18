cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.12.2"
  sha256 arm:   "5824f7214be1d59e1a87a0f033e283aeceb1d2fbf52c04cf9025de060b5a8f2b",
         intel: "56c481958f2cdd9481cf38ac1180f2a843d2ce46b4d16b55b7e12af3cb7681f9"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
