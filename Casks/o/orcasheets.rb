cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.4.2"
  sha256 arm:   "38735057854166c61b075bced7d24c9cccc44bc0f34b39141ec9966231429b6b",
         intel: "1d9ad81d52be6b81adec31878e68a0e383c5afddcbcfabfafa1635e8f1c50c26"

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
