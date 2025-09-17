cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.19.1"
  sha256 arm:   "e72e8c4d8efb5727daf7b288f3d352c6182e0142a430e36a9bcadc2d16c910bc",
         intel: "485430d4d7c3bbd3f05cf111ff67bf30491b016edb056781f4dcef3f34d2aee2"

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
