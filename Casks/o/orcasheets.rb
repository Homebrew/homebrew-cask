cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.12.1"
  sha256 arm:   "328efe4a1c1ff84f4435b775b3b4fecd9694cd15018f1eaaf51f9d825e9b910e",
         intel: "d2577e93859e3992fc288683530dfbb42e19b11fb8870e525ac2d2a845accaac"

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
