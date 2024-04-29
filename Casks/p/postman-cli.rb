cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.8.0"
  sha256 arm:   "d21e194f1d625f63b5c079a40ce627ca1fe8a6c8c9ea6f39ac890a29e78c16ff",
         intel: "d5df18a6557665f48f7315f6f115d7e8765442abbbe97346577bbf627aa33b87"

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
