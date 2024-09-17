cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.2"
  sha256 arm:   "b19ae0529e2bdd49d8243c2c8bae27690ce87c4738e1a709cbbefda440197bc8",
         intel: "687cd1864669e8b837b19e1df3b326a73222a6cad2adb93dc598e62ebb8a0567"

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
