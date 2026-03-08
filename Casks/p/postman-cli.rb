cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.31.3"
  sha256 arm:   "786ba678ab8e79c749ddb976de6c4973f67f0987d6ca4717d6609a17687a749c",
         intel: "e983bd24e9f9a50b988a2bd20f3274833ef5a9acc2635e5b3ad04512d5a3fc75"

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
