cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.19.2"
  sha256 arm:   "f8819f89d45d22d084ad1dd4a4c88daa09b39f8a2bf5ea9da16b3dd765f46e98",
         intel: "5e06cebb686061cf954e66f2e9fa57577f1118dc10a95ca8a10bfc1331ed3417"

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
