cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.20.0"
  sha256 arm:   "530ca4868de1f461d895291c1fc8bbe948156f71b3b029248d76e0fdb58567dd",
         intel: "e0705ff0c794b2eae732d2a7ddaf1fbb448f8a7c5daf8bf8562d16247f67e321"

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
