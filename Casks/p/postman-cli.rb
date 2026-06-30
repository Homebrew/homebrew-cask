cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.41.0"
  sha256 arm:   "695948a221c6c5013cee155eb40e8ef65a1ed2a7ea9b1e36966cfe69ad056b33",
         intel: "8a7b5a7dfec87fc1dc528f409396372f1b03d449b10bc4df5915941be19c1688"

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
