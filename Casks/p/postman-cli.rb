cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.39.0"
  sha256 arm:   "7e25100ca03778d730e77aed67bcccf1b0f6dfa5ec8cf1dc593327ee397a22a4",
         intel: "cad46f56f9d3cce24f70bbf56178535bb488e794864dfe460c15852c2d3592ce"

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
