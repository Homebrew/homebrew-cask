cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.34.1"
  sha256 arm:   "b7052aaed2cb36858ad6acc620eff2687895882bcf00ccab6523c792a086c89f",
         intel: "30616fc6af9560350711653f5a8c5e715c82061445edcb49b5a04b3241022597"

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
