cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.52.0"
  sha256 arm:   "8ab0cace4302e76eb62168f1cd067a2259cdd63b5d607de6386c4350fa37909a",
         intel: "39cdd0b77650c2a857a86cd2bd5f0ef29d288746190153d13922bad77477b799"

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
