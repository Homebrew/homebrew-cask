cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.6.2"
  sha256 arm:   "8b63d70e945db3fd8f52732c89217247f75afeb62ac9630922d6549fc8b5b41c",
         intel: "14381e418fcbedd64bc9cb31a72bd5e9aeccb264f9970a7ab28b1e9a56cdb511"

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
