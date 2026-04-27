cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.34.2"
  sha256 arm:   "2f06f53a90dfed6103012ecc8786fc838c472e8636d626f6d532cac66b135ffc",
         intel: "d6b930f5011efa769f0d0dcc9867797c6ed8569b78e2093b554537306ead052c"

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
