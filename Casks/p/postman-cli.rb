cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.92.0"
  sha256 arm:   "3c35f5d231cfe90c8dfc83cd799814ff1917789766d4e5f5a39dd95cd8045df0",
         intel: "90617e788766393014b966c1b83cb1ea7d37dca9aed78b57f9b3f98ff96e1ded"

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
