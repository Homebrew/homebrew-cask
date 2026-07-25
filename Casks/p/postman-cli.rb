cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.44.0"
  sha256 arm:   "ea7eda5cc92ffd67b0f168a99cb1c826ea2776569db1c8d4988f1455a829de2c",
         intel: "14369ea49f58b693be20c9baf70d9d8a9b95fa44845c69034e1b04c19ddd8464"

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
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
