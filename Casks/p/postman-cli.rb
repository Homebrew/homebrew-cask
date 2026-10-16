cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.75.0"
  sha256 arm:   "00fe04e7e9cf85224096726ea2ba892f47ad3090b7285f80f22fc9025d09ee38",
         intel: "ec082636254ae8773638af7f55324abb9a2697053413e050ffbff596d9aa8834"

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
