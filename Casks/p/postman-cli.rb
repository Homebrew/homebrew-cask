cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.6.0"
  sha256 arm:   "a07c71ac87878884c0d41b9b9aa212c2631b80f5f599b710e92e70335d6930c2",
         intel: "4d839aeb54581abe5652cc84aed12317f60282d8ce5465f3c9f89f649ab37a47"

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
