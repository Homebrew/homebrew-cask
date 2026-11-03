cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.85.0"
  sha256 arm:   "028a9c620842a88373a82daa4d33d8148cb684712d2af46e9439bd0fefee4617",
         intel: "8f352fcdc52343fd28e5faae136b90a23ee989e05ef8b646dcd22cb9437fb227"

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
