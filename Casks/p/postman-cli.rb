cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.17.0"
  sha256 arm:   "96fdb63ca09db68a5bd75ecefdd3e3ef99ec37da977b3bf054e12f28f4d605e3",
         intel: "a9e65b842cdcbbe4e8682d6c8c07932bb8cadfc808f35256e454205af50ea4a4"

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
