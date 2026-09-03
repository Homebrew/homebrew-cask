cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.54.1"
  sha256 arm:   "45ca9e38ae0b0bb2b9e6506e9c99f9efef76df05d0a2cb80485f7b4ae1513a24",
         intel: "28528d59c04f1a5cb3d15d975a3afe0a10e979fbfb74673b2d3a3ebbfd180dfe"

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
