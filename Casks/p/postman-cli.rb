cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.54.2"
  sha256 arm:   "e8f5e686678190a6270a5ba176537a090939d54b8143a8bc3215615e3cb422db",
         intel: "60424a235e28fdf6270b1cb1c4e1873f0af28ba4580466c54f0dbdbc875c300b"

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
