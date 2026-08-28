cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.51.1"
  sha256 arm:   "87dc208c5a5e91688243d7852b591506f0867292df836ecca3c3a12efd961e86",
         intel: "ce51033264d9c90725c2755e80fd97c6de2d50f7e80a191c36f356a664bade22"

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
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
