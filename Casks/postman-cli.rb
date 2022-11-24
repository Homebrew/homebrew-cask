cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.0.7"
  sha256 arm:   "5abf0a2eb7d5d73a8d1a2b2fae138cff5335cc051354db2d939118c3160baebd",
         intel: "413f6987e5e0816f8f01ee5a5812a6819a67d6f0cb848fc6b414f0e22c3ae076"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}",
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
