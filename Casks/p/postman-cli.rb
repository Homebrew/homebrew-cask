cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.24.2"
  sha256 arm:   "daa3f66f8c5ed348ae4aa79c3491baf80ba562f306c29a8a96f223a15a7d3f3b",
         intel: "8d84edc38e014beabd2a83b142e3a01a162b9868d7b637a416e6638d605dcb3f"

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
