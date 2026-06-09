cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.6.1"
  sha256 arm:   "dfda293058602ed4fce5f7f7768ecff203c3e86060156e8286d476676bb3d4a4",
         intel: "bd27d854e1519ada2c18d636666119b9eeb02d5dbfce1e83face7597eee783d2"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
