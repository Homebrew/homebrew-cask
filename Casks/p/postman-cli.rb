cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.87.0"
  sha256 arm:   "25071a80979d598bbded08e1757c9fee9aebed5ec282bb4e216db17e78eeab3d",
         intel: "16f508eaef7baa2eb63da6fbd746052ae92288f3b831c075e6e3f641111d5d85"

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
