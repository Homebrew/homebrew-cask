cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.34.0"
  sha256 arm:   "1c524090e6d0c5962ea5cb5157eb78fcb9b8ef0fa3e57173c74ab9d6a5badb6d",
         intel: "84cb0866122660ddc821b0a3cfcb564cdfe6f4b0eede701006cb36a6aece0dba"

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
