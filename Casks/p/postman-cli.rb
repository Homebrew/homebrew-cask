cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.24.1"
  sha256 arm:   "178cf59d8775035dbb4e4a18417ca0ac6f521cd572ea07044c9f8ec34dad2882",
         intel: "c6fe5d83cf93264dc6503ed62a7015c90130d938c7ebb122d97fcd8d4dbf088c"

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
