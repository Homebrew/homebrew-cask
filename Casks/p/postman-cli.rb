cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.7.0"
  sha256 arm:   "ae7392f4e6d12b6d2e0e406db29ca6ea7dd0d9538ebe39434e9c12995799d228",
         intel: "9e4cf63bba46fd4156c67c343211d876d5fda30792674fe4e054b7f0fa616ff6"

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
