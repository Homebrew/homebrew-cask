cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.2"
  sha256 arm:   "832cff2492de74203dcce8dd97f08c4b1f378f0e5d7e78f9d2dd89b0587929d7",
         intel: "b3e7cfa8f0958728c786deafbc6abf7dbce63f03d232a309d797b78ef1c51559"

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
