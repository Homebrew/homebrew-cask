cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.4.0"
  sha256 arm:   "525932e3db99f48b7fef51e0c88a3e1e32d5f809b01fe9fa09246759711a47ee",
         intel: "df0a16de9e3d261d4155c25c0060478620a7b57a6654229271151e0581994331"

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
