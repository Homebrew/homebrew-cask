cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.4.1"
  sha256 arm:   "4a332062235b3e1472a7fd5d1f059cfce7b547aa8ada3cd293557a9f805c92fd",
         intel: "7ffa1ae56a27d8a739104e7eb02330acd55c026fff671cee311d111044c7729d"

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
