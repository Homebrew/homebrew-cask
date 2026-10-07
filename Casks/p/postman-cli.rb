cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.70.0"
  sha256 arm:   "bb306692b96f541a68268efb2d1163965310100c827a0d3dff412b5ae40baed9",
         intel: "4a41296a1958767aac60cd6e2d4d37bb7aa7131c2b464ee8d995822408eaa54d"

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
