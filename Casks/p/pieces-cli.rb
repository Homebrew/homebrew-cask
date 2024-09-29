cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "fd8f4db441d33518530e67798d068f0fd484633378ef6bebee0495b1b22fe42f",
         intel: "16f79b91f2f6ce5f63acd5eb995ca30f2f90d9ec347987ffdd9019c24395444b"

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
