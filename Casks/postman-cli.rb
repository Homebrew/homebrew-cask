cask "postman-cli" do
  version "1.0.5"
  sha256 "57a02c91e0a8a886af2561de05451314cdb9c07357e2c8c4912f3e9274b60e8e"

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
