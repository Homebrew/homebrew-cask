cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.60.0"
  sha256 arm:   "840fcd3a3322f30b4a48184d30e4cf413820296e9be13d686a6e0a5fc3c8fcdf",
         intel: "dd147cbb80b20f08faab63df6b0719aac9af73d99ce8d93106a46af41a44b433"

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
