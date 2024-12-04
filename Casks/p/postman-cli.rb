cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.12.0"
  sha256 arm:   "7c33be325ffe3ec036e311f1e17a3ae373a91b89b1dd516c27ab0925eab669bb",
         intel: "789d180a633702fabb898f40f4b955f35428269134b258f330096a2efa326daa"

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
