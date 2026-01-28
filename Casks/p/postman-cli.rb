cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.29.4"
  sha256 arm:   "624b32af26e25226aced7955f844da4734d7f2ad9173883777abc887549ba8e3",
         intel: "1ab60222d8d67326e070073dff1597710711d037bd6a5b67550878857ddd29f4"

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
