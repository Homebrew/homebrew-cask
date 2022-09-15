cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "7de7c5cb20b421ecc54a312f435c6ddb47de427c80bbdf2640693ae7af2d2be2",
         intel: "7de7c5cb20b421ecc54a312f435c6ddb47de427c80bbdf2640693ae7af2d2be2"

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
