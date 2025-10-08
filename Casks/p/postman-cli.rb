cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.21.0"
  sha256 arm:   "2303f943f84bd3172df017fb9367de8d76a47449e837d95ad143e45db322b324",
         intel: "ede0a2cbeef11cb585a9f947a55a93b65a83b519e7daa3a2f08e263d733e9a6f"

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
