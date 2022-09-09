cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "f01d97acc5211dba61becb820c5625cddf3ff2f4b90a9a3c2c17ae119e26f542",
         intel: "f01d97acc5211dba61becb820c5625cddf3ff2f4b90a9a3c2c17ae119e26f542"

  url "https://dl-cli.pstmn.io/download/postman-cli-cli-#{version}-macos-#{arch}.zip",
      verified: "dl-cli.pstmn.io/download/"
  name "Postman CLI"
  desc "CLI for command-line API management on Postman"
  homepage "https://www.postman.com/downloads/"

  livecheck do
    url "https://dl-cli.pstmn.io/api/version/latest"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
