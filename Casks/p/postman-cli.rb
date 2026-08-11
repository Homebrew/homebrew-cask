cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.46.0"
  sha256 arm:   "ac14fe08e817e34c7dfeb038d5cacbc419efa7811525b341abea57316d0bcd30",
         intel: "ed6c7043c5ea79a43b2e72b6e6e8323196a840490386d6ac3588c3550d0a18c0"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl-cli.pstmn.io/download/"
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
