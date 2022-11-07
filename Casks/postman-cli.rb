cask "postman-cli" do
  version "1.0.7"
  sha256 "5abf0a2eb7d5d73a8d1a2b2fae138cff5335cc051354db2d939118c3160baebd"

  url "https://dl-cli.pstmn.io/download/postman-cli-cli-#{version}-macos-x64.zip",
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
