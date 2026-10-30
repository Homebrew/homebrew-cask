cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.83.0"
  sha256 arm:   "f4f4fd6242e581b87fb9f68bc339096e3bf9edb9b745742bdcc2bd28385c06db",
         intel: "14a5d5f0fea73987f98b60873e20586fa0aaea24c527c5a7351f5f84f0cf5b3c"

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
