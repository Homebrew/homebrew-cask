cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.86.0"
  sha256 arm:   "54216c54499a4952d1b7b49d53ba0f4232e6b5260ac92580b449ff8b14e4297d",
         intel: "055805e9bdc299f844052445d88883b67925f7353bf9dcf5620f8ad0606f12b4"

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
