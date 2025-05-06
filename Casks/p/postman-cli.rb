cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.14.0"
  sha256 arm:   "556b48681fc108d40095e8230d513f5b4ebcd17223fc1a1cb9a8e84b0eb56022",
         intel: "2eaad8d91609d4786f1829f63e1163689c3c7ec1d14bbab5de79cccef1277637"

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
