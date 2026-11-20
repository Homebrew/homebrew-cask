cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.93.0"
  sha256 arm:   "e9463f97260f9a86975ec8c362ff81ee39b008f18e21883e1fa3d6ec8bd026ea",
         intel: "2beb204c030c87943d28a1dbeed16e04c57296a82c4c11a3e1426b12ee64662c"

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
