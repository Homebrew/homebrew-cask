cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.3.0"
  sha256 arm:   "524ee2d9e6ba4e7caff5f2ac8231f7bc1e8e9a566bb3690203087f2b2ddc331f",
         intel: "61bda495cfe3c3eeab01d435eac3b8c7c48ee51c0e797052b620eb2a45a6102b"

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
