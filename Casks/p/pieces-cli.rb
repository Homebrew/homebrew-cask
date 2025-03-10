cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.12.0"
  sha256 arm:   "92c31979dbda724fae81726ec1fb47122613946ba735b1f19296f0bd8f318652",
         intel: "7903316f8c8c8c691b001045cfec1e5d2efef18fab17144c7ce77a43b0eef3ca"

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
