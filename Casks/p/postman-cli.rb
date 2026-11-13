cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.90.0"
  sha256 arm:   "87979064fd94ea5de183333009fcde3b3e832f88fafba74028485337d5c8f39b",
         intel: "eedce4d71009bce2e277f9f279407b3c35af6480faa381941ab28643b44364b8"

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
