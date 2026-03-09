cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.32.0"
  sha256 arm:   "8fe94dcf20f7cad628870c5c0e78d45ddebfe6f5154fb855705989b60a1188b4",
         intel: "4d8d2c919b43c0090414dd846c0635b2ae8833060b6b5803e89cc5e8d760a9d5"

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
