cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.3"
  sha256 arm:   "b0548d5c2c1acd599c524dad1470f454a130a2d0489bc5cc6091c6acc03c5d7e",
         intel: "39b3d50f6d9895f403ad17af4d23dc576647418653f8ca4248896aac462b5c3a"

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
