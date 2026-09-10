cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.9.2"
  sha256 arm:   "4a05507bba305fc90547223afe78f54f2c45013ca2a7b7590a8c33677bbd9436",
         intel: "fb9b50f278d8d84ffaaf9cd5ade7a5ca2894cc2c07c2e04d39b8b3bd4ea4d647"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg"
  name "OrcaSheets"
  desc "Local-first data analytics"
  homepage "https://orcasheets.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "orcasheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end
