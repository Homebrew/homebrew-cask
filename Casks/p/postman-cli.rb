cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.43.0"
  sha256 arm:   "ceafb0ccabfc0acfb975f4ea5bf61c44f24301614605c845ce6838b282d2a71e",
         intel: "63d0eca59d77d4a6dacaf0679c8d0ab8ed051e2f7e60356fef3bfb477e6f2be3"

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
