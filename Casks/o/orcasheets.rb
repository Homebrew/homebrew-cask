cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.11.3"
  sha256 arm:   "a3e88d02b952ed522177060a598c6fa428edede4feafeb0f90e40588be472cb2",
         intel: "974039d36f602a71a63c9ab1e51e2b2a4d0b543c8839a720fb1d08b7da3f06fa"

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
