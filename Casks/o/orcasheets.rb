cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.5.1"
  sha256 arm:   "96eb4bac432fbed2d8dc99c8c71c02541da01b0106ac74432d8568e64f874821",
         intel: "6ac0fa89c58523e02dd3b21f54850b12c9d30e340b06fea7135938ae56e46220"

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
