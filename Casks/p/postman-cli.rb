cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.25.0"
  sha256 arm:   "84f806cebdb9ffea73a60dbc9e4e7539b1a57256196fe0e2852e8adc1972667b",
         intel: "e5c9d4cb0536e9ad4c55645ac8dd76b203dfa11492560f981964b5347355095c"

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
