cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.36.0"
  sha256 arm:   "f07ea2fd293faa5cfd73775b333c009ee0d4cf71567282d3c2da8bb69939af10",
         intel: "058a6e42fb40f7d3658b2179d5d538d4b32a596029c0d64bccba0a86734e880f"

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
