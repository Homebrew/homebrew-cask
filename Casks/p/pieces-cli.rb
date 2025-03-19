cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.12.1"
  sha256 arm:   "d236c69400b343cb480c421bd9fd5951a7989fe5cb4a4fa6af1437f6d7cd8693",
         intel: "e9302a9f403ed1b266b66fe9d4bedc383aa96854cd89d52329d1ab84fad4e9d2"

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
