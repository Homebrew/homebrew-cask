cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.1"
  sha256 arm:   "3db039d32f65af8bf212f842720aabd88b047262fc932a2cd661a8222aa46e3d",
         intel: "ac3549da37f968071e3264a9a856cbe5052e00c544defaeb491720720b10f7d5"

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
