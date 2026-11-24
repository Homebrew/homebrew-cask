cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.94.0"
  sha256 arm:   "e1be53af7b0f2cf0e04b7e02272da946332ab55a4842cce7b0e96bc2a2971e9f",
         intel: "d0358558145c18341aba5b97d768fea4e83a1d1d11740823fd50ea1142b531c9"

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
