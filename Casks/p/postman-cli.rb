cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.53.0"
  sha256 arm:   "5fc8bc49f6f7fca179d3d19a6ccf77c03ba893657885b427ae45683b2c42fb8f",
         intel: "c626b6f69a103fcd003989c9a6e2709318b3c2cb276accce9c568d06b2bde90e"

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
