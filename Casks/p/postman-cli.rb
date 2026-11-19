cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.92.1"
  sha256 arm:   "ce0e671b72aa8671a5a46ee7aa419ab0c3e461f188362d64ef7796c9d5476ba8",
         intel: "4e8ba92b4d139bc7c1ff7b17ba3fa14ff8a66bb8071215af4ad9baf0fd9ed243"

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
