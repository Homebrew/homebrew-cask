cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.13.0"
  sha256 arm:   "b391611f6cdfab8051684ff2984b5bf09aa257918b52aed8a5a90aad9082d883",
         intel: "48931405f38c0376037862773f09533fc00a10a68c5f3d7eb2560a23728bd9ca"

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
