cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.1.2"
  sha256 arm:   "c132c0af2cdf86f02002b1112cb60e91a1f049cdc15b8a5412f9d41197d3e707",
         intel: "b19b9598c216fb61b535c6f7a1947778ffe8140dd2d1dfe036e2b69de62dc425"

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
