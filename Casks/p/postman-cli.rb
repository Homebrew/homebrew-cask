cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.54.0"
  sha256 arm:   "020c4a926b9bfa647c2aff597c58ffb7e83c8bd6f54c17b80826dc90d67d39d4",
         intel: "251d147593ac8709361e9ff88e73379c07319a7b334afeeda4410112fe187f99"

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
