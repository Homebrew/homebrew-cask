cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.49.0"
  sha256 arm:   "6672a0b8c1c0fb34d1ace7d0b53d5ea9c63f8743fbc7dbd4af4ac957a547fc52",
         intel: "e9c31c37066bf97a81e4454d8f824810545b53cfecfc1c4600a6c8e57f383825"

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
