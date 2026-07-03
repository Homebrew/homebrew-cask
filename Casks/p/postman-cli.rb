cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.41.1"
  sha256 arm:   "cbaaf72e2ab683b5f5998830af6bfcab5f5e51a0301088891247d86b3cea22a7",
         intel: "ef846a6b4a4a5341570088b32acba4298ffcc4141ad94e7865198f87a35449eb"

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
