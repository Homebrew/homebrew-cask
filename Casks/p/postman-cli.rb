cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.22.0"
  sha256 arm:   "6496bd9158f69d5982b32e9db4cb0874066814b4fd8d554c237e434ba11eb7fb",
         intel: "0269e68e0d0b319826051c3b2d39292e071271edbfe6deb09f1a7ac7e88f86d1"

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
