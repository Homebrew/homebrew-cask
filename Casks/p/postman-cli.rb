cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.88.0"
  sha256 arm:   "5cfc355b30cc670382b600bfa9d176838fc14da4a265b7a0d75c82530e31b5e7",
         intel: "e57f5b4002db39f76702b079d29add6a4284a27036a7bc0084f6d706d4d0bfd1"

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
