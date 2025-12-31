cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.1"
  sha256 arm:   "b61e5a6d03aecab01ee332181634e15a3f4eee8c56d2dd9a5690152d0be9289f",
         intel: "48cd31b8a67789187ca72bf99f9f6389b16f085b846de956e67d164770375711"

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
