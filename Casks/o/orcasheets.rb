cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.3"
  sha256 arm:   "67ecfec617f6c7fc4067603ccd0d4e96853aa9d21b2c113fe65c1b8ad0992449",
         intel: "8ffff92a5be148047ad25a1a24c0ca8304fcd8acaf3f411bb79c8174f7ae5dc6"

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
