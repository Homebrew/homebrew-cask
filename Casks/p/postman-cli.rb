cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.5"
  sha256 arm:   "5668864eab60e2c0a190446051a47d95e65eddd5c78ee8b4423263280b401cab",
         intel: "503e5af5d40b66eca827dcc393aefab827c6afd8ab38774d5e27db632b2fc218"

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
