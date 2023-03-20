cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.1.1"
  sha256 arm:   "840f97bc7939b6d7f373cf20498b73bdc024c1bfc699f93c8b166e2f3584f043",
         intel: "1339db7423900dcb94416825599e8be58438e31a1bae90544a1aaf503b80b5a4"

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
