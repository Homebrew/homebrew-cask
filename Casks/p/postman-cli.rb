cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.17.2"
  sha256 arm:   "03b872a2d2e79770392696db598bc94a32c8735fc6e40ca30373ae43fc65ea47",
         intel: "5e7a0142052bfe243b6c620a2f5d97516806c5fcaa40cc2c3d48d74ce615f200"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl-cli.pstmn.io/download/"
  name "Postman CLI"
  desc "CLI for command-line API management on Postman"
  homepage "https://www.postman.com/downloads/"

  livecheck do
    url "https://dl-cli.pstmn.io/api/version/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
