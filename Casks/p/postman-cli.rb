cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.37.0"
  sha256 arm:   "92b48e0e3ce298b6e95ec825166592382c4bb0b4ff82e80f593f9937dde1878c",
         intel: "9d98ab6887513e300e67f55cb38d4dfb822cad6f443df7620a986bd4bb05b262"

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
