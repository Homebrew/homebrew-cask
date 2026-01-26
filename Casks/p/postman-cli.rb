cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.29.3"
  sha256 arm:   "3487085e30cc461947e659362ac2c53b5c9380f74beeceefef3c24a71fb0864e",
         intel: "784e4b986daa907d66ea5c247c0be8c2204b2cbb6fb33e60a33697307f783f27"

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
