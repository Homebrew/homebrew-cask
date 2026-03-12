cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.0"
  sha256 arm:   "4f46759d8ad3899774f5927677ebf656c02ad6c23d2332d3a2f6fc47788d3b9d",
         intel: "1f974b2be7fe040050a918a877c1a502e9849c3331b94c6791b701439c69cd91"

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
