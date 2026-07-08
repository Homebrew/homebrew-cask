cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.41.2"
  sha256 arm:   "d0dd3f549a730fd87d82f24602b6f2894c6ea1d38896f99c5b639dffaecf8b41",
         intel: "dc633ece377555fa0b05216e5706c141eeac93caa94169f0d877b7c9a3686161"

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
