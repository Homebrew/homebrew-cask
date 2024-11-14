cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.11.0"
  sha256 arm:   "bfcd5ebe964e1cdd9cb877dc71cf9583cb1eecc2b6893e377a1360126a4c1a4b",
         intel: "fd03f15ee13bba2e6f6aedea3b5eb2aecc4facee9d61c4f2dc64574624696767"

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

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
