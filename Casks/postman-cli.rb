cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "0.0.9"
  sha256 arm:   "91d2eea1b5aad8567ec7084202ab75c8391fe3d55d5db53dc6ddd86d15f3c331",
         intel: "91d2eea1b5aad8567ec7084202ab75c8391fe3d55d5db53dc6ddd86d15f3c331"

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
