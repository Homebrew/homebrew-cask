cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.57.0"
  sha256 arm:   "6c11126a1ac175902b159a3dad249941f16929d98d6e445711d19b9d3b41333c",
         intel: "2c5fe5c375bbf14ef17bd90a1df199decff3369ebb682881896005ef8dc9eaaf"

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
