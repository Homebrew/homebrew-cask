cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.64.0"
  sha256 arm:   "d561a8c10c2213159b0f0de5452922f7e1394360709876b9dbc4bd2e9f9fbfe3",
         intel: "9425df7395ab0ea7280c6dd8654958ce4efce11966e9d9aae43cbf9a02656572"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}"
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
