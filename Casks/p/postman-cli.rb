cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.29.0"
  sha256 arm:   "c66128c990aa3a1b03289be2a51c71f6f21aed94ee2a3a8b63fde8177d378327",
         intel: "90f3fff6dc9cacb32a04e0913a35b3793fe657e72fdb5a4329035f376eeac500"

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
