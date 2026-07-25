cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.7.1"
  sha256 arm:   "9c0a1602cc16b34742e3dfcf296583bed20343cf680dbe0a93c42e6733b7e6a9",
         intel: "548c2ba2bcbd2dff3522828226ba8d97d9fa5faea2b5f57c384b8a71ca584c47"

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
