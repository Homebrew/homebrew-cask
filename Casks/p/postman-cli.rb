cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.35.2"
  sha256 arm:   "4a37d232aca13000b59dbef6272a2a7194d49a4cef0cbbb96bde88371480dea6",
         intel: "0c4fc917c7cce2ff641f940597cfe3d5fddc1d2f6c484b1eac5fed66af89c5a7"

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
