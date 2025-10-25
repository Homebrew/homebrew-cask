cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.10.1"
  sha256 arm:   "b12e696003e528257223bdcab07559d75f11dbc6739ed7320419f58f14696e6a",
         intel: "bd032bfc65d5ec8c74740ff92651380c7053b9d29eb0e23b6826f7ddcde60e1d"

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
