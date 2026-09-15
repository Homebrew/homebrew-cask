cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.56.2"
  sha256 arm:   "715c5a8fad08e76192122d0eac31d6239bbc6f2cf4677d2e2ace75edd2e8c6b0",
         intel: "e7632acc2c73e21f6dfde4aa413db60023d3fccf679958d472b0a7f60a1e5d5d"

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
