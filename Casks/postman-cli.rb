cask "postman-cli" do
  version "1.0.6"
  sha256 "da887dae93001aa459a7d673cdef1a6f2534b0b8e37a371a6355401173235756"

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
