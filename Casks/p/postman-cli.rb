cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.69.0"
  sha256 arm:   "7774f8fac84f9db32f2db9dd6e1c635d97ebed01d38f8bb9c187e0218bf7180d",
         intel: "8929ab6b671b189b0585935f580f69e847bd832e6bb05dbe655f88f7454433fb"

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
