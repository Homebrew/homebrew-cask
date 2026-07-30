cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.45.0"
  sha256 arm:   "c0405a5c57d3dd9425dae54d3bbc40beda3fee5ef04d9d70abfc82a7ec5ec9aa",
         intel: "8a6798da30d64415d0e5a0e27fde486b7bfb8d8135724ec37f0b0cbee74b7146"

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
