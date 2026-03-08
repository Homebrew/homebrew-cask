cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.4"
  sha256 arm:   "ad48997961950d3119efc6168ec7df97aa02a938ff5aa2004d7151ab8dcb84f6",
         intel: "31645d62ec11d4c3408a4c784d8a4e7748f563e190901a87a443fb39da81641a"

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
