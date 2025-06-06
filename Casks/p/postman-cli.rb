cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.16.0"
  sha256 arm:   "19efd2552d1b761806e786e61a6948f5607ff564ac08886fc53a06287c244055",
         intel: "1792a6df86d42842ede5c3446d26fe82948fc229b513b1b4f123ba9cf61e46a5"

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
