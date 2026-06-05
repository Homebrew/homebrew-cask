cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.38.1"
  sha256 arm:   "a2973d352a667e114a61d83d5b46c00a0c41d5706a9c567b1194c3d444e9fc56",
         intel: "53c3e767c72721816dd4bb787c2c25e0bc6247455f0bb44d4ee0a92e0bead12f"

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
