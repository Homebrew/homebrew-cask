cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.10.1"
  sha256 arm:   "15328cf8bd439d6aedc259071f7b4aa316c2325afe7bbd4e713433b5108cdf90",
         intel: "f03240a553835d888df3d6029efa79d430565c0c4d95677a6e9b9fe647e7768b"

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
