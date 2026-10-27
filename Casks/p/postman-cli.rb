cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.80.0"
  sha256 arm:   "09aec4441262b31974615f2f331040dac5b0cd750626f891056f40475571d052",
         intel: "41e6dbeaadc5f5684ca0ebc3889ac0d9b110aea1c9c0b2f6101709c334968bd8"

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
