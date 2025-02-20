cask "pieces-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.11.0"
  sha256 arm:   "4ab484ddd698d6192fa09ed4cacb3b055ca8de490118c41f58c4f27268082c87",
         intel: "f032a810cec4647b01244256561a09cb210eaaf550b4d0b714ede26ee38d5e2d"

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
