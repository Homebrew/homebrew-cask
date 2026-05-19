cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.38.0"
  sha256 arm:   "e4f41cb8e0207d9bd098bc7a6ecb741a7f79d093c7794e17e817f3699392f3fe",
         intel: "6a28418595961078d5d866c38546ff3a43fc532dd5ae84bf316f3856b95ed7a2"

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
