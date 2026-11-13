cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.89.0"
  sha256 arm:   "728707816f0a2f76cf1cfffad1423fbcee977ce1e8564a3e7cec26c886d5b500",
         intel: "21a53482e8f13cf5ebadfe901bf62fd429050a9de7ddbf85402e434beb60395d"

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
