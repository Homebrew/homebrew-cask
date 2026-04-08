cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.6"
  sha256 arm:   "ba5790ae6f61f27bc00d8ce8580295c511d5c91b7f7b6a561f53d1f5cf86719e",
         intel: "a92f8c71ab0f0ab2188de7074764b43c3c634836990faf5338b585e9918a692a"

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
