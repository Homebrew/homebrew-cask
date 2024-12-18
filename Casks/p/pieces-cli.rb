cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.0"
  sha256 arm:   "e70f9c31a7824bd5c768b00531eabdc3bc8978c7643947cab9f3b859b597a7fc",
         intel: "352c1bf5b1375c273067327650ebb140779177014cda1624b560311c73d89ce0"

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
