cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.10.3"
  sha256 arm:   "e997aa7e5484ce4d32b68c9fae4e734135289070e926eedc67c312694e03699a",
         intel: "5c279ead58ebcd721275424fe9dc8a8d8f69d47ea5fa6dc441f4c1737203c53c"

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
