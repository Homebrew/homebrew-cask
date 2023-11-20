cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.5.0"
  sha256 arm:   "9e93fa35789e345ceec4887d77da42f9651e67ccb0a181d27f58370894fb9ae7",
         intel: "2b8d21d137e4112ddab7378cc1f1e63d91248c04e169a85060a75c1672659c56"

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
