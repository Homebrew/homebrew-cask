cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.10.2"
  sha256 arm:   "5a039c11a563cc1da813e80c6d904ddec39ba3b73461ae8c84536a1a4bc3bac4",
         intel: "599b50032f9b6397a6651e2bde5f85ce77b1f14de3e6878ff8620b6d0f7df814"

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
