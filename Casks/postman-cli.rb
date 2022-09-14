cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "0.0.17"
  sha256 arm:   "78a05c6f8911f64502804fad45b06ad4c055966c2980692de04b722cdd296092",
         intel: "78a05c6f8911f64502804fad45b06ad4c055966c2980692de04b722cdd296092"

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
