cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.65.0"
  sha256 arm:   "9a4c704070f2daf045162455094051c3694ebf9e2c48d40d1745c35c965df04b",
         intel: "40dc0d087abe491f9f438195100162f0f9472ac9294dcf2bbafb3d37298d3cd2"

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
