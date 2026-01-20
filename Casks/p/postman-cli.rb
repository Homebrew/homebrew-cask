cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.29.2"
  sha256 arm:   "b3aada6451ce48978b2cfc209ef67021f94c221304921f053136e8b9b9348a1e",
         intel: "1c09e5e3a7300f40752f4ea3076d8c78d4e7a7faad19eb757020c0c70adfefbe"

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
