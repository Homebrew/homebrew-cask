cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.1"
  sha256 arm:   "ed4e64bc138dbb3c1f55ec8494de60a44cdcee983a276a61cb211d56db336df7",
         intel: "ccc2eeae1a11b54792c2198a4c2bf99afebce528efbc90fe50415454f9136e9d"

  url "https://storage.googleapis.com/app-releases-production/pieces_cli/release/pieces-cli-mac_#{arch}-#{version}.zip",
      verified: "storage.googleapis.com/app-releases-production/pieces_cli/release/"
  name "Pieces CLI"
  desc "Command-line tool for Pieces.app"
  homepage "https://pieces.app/"

  livecheck do
    url "https://builds.pieces.app/stages/production/pieces_cli/version"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "pieces"

  zap trash: "~/Library/Application Support/cli-agent"
end
