cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.1"
  sha256 arm:   "cc8800015b3ca48b9f84c381fe2d3fae0cc6e5cd0eedb223dd239da4cc19d3d4",
         intel: "6db82e89bcbc9e3025687bb79b07efc21e75c402590abd23c80443d24428c6f0"

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
