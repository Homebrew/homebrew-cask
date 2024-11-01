cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "94605d092b51f10f6618f744453af5e423eb59fb91450d639f20a56feec27bae",
         intel: "f9aa58b8ccb2c9d9445480ea0b0c0aaa6a9271def4950e3099cb44f46c0ad410"

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
