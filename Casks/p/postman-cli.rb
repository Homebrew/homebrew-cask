cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.7.1"
  sha256 arm:   "b55151baafd04085d7d1c56814916f76404c182cb4e88060e1414d85a2d924dd",
         intel: "4f414d29588345b55ff88df992d82412af8e6e68800f0a667bc3e404c8b6e59c"

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
