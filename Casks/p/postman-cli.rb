cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.46.1"
  sha256 arm:   "3a510aa26e3fb33c581b48f54a336be7d10f28633f2df1f938d5111df6c09f21",
         intel: "4b71f83d99572f253cd70ae3a679f4c10f39d13e60649816a9c75ed0c6c9274b"

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
