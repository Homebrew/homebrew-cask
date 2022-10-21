cask "postman-cli" do
  version "1.0.4"
  sha256 "01c8082263d23096a10392446da95e245cae107f90d3a8f925558375c53658a8"

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
