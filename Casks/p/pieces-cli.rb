cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.0"
  sha256 arm:   "074558c81b35a21c5c6456563ec5b02e7b13fd0b6360e5f58912a7efc6604585",
         intel: "5bdd5d3b7287867a507a1821223659ffef9b2f6890b971f7467972d2010ab086"

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
