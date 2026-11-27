cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.95.0"
  sha256 arm:   "a7d03331e4aa508101169a238ee4794d206d9d2810d9524554f191bd4dcb2c36",
         intel: "4c747ad30c2dd47f4810dc638ea5393b6321826316b1b49b70fed92a466cbc09"

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
