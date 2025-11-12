cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.24.0"
  sha256 arm:   "200251c5842f727d4b878ac3bd5caab84e13770b1b2201b093ef8f2540d39e61",
         intel: "644e93c1d813270577fc44a0739893071e49573e1ea8376819ab3bad4891d6b0"

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
