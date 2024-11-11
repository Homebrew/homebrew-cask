cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.2"
  sha256 arm:   "eef4a9a7d3447e4daab7705c92cda56bb9213884e9c02bfaa4f7ffa582673ce7",
         intel: "aedba93c9883536d1776f55cf7ecd96c129ac12f47216ec39dd1fb49514d1e02"

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
