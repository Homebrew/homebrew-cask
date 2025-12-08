cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.27.0"
  sha256 arm:   "3952f91d3cfce1935bc8a757528192131f0655a8905da0c0bbb3654f713bcffb",
         intel: "4df70e4615cf65b46990e830849da97552657881f8be38f83b81d9e256e48310"

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
