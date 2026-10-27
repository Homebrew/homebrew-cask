cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.79.0"
  sha256 arm:   "ac998192b360e9cb99c4205b880624b58e74d80f5f47cc1e1c4583505e6c1087",
         intel: "3a9f401479c0447cfd1301a91ffe76c43e8eef743e8af3e895ae0e9113e0972e"

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
