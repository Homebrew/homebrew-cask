cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.59.0"
  sha256 arm:   "a6763393c4947b2eecbbadcf02e520787a79ee1fe8d67f0d94ba69d2652c1b51",
         intel: "9d0d6f736c101aa184baa87d683cd803a7595bc36a06755f97481728e6153ed6"

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
