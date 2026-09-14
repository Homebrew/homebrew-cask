cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.56.1"
  sha256 arm:   "7e989c8dcc40da4d4cae572ff2efa6947de5e0335b8f617d3460360043df4107",
         intel: "c942ea55033f8b149ebefdf454f5a539a18811a1b2737bfca7486996435ccbb8"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}"
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
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
