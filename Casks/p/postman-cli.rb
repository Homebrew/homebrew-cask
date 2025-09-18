cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.19.4"
  sha256 arm:   "883802b52345591fe44bd27b53283d84b3d6e47e30c9b4378cd284f5359db9a2",
         intel: "3ac84f4452d7e466145451b6404e161c721f340faf60c9a276d9a6704428c1b3"

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
