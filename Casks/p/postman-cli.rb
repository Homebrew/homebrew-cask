cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.39.2"
  sha256 arm:   "40a0310d12c15b6d0b7230ae5403513c457541d1dda8736110e5eef85025f263",
         intel: "16eef9c460fe697f598bdcb51f12b14a4668ef722b8ba07324927d83a6ccbc58"

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
