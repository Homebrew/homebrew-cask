cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.11.1"
  sha256 arm:   "62ee873e4c298d2c6d022c248c4ba415eedd213f6405ac20b1667e658cf85dd0",
         intel: "54702ef1ada9b6ca043a7db018722a78397205c0df9b2ea69e9775991db24bf1"

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
