cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.0"
  sha256 arm:   "80e6b98437d2146ff6521501387e16c0351f86dc0698f7cf0e1de2e46061536d",
         intel: "8e197e80cd5ef7e1a50120bbc7960ccb630faa3b94ceb5a726755698c43a6f0e"

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

  # Warning: pieces-cli has been deprecated because it is now maintained as a formula
  deprecate! date: "2025-05-22", because: :discontinued, replacement_formula: "pieces-cli"

  binary "pieces"

  zap trash: "~/Library/Application Support/cli-agent"
end
