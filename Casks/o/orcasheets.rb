cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.2"
  sha256 arm:   "ebd84b483c3c9212f34721952635eabee01559b086579f0c2ff2477abf69c575",
         intel: "b31abda1593a57b232c2c08b74e82e1480e638b59f6cb021cf89f30afc497b6e"

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
