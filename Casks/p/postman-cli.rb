cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.47.0"
  sha256 arm:   "e32e68b46c70c41f2baeb272e878c968404f1d130995a3b85845f07f570e274a",
         intel: "bbbc9d493a291e287f4118dcb6bd04f3303486e03cc63c5f4862dcb6fff2ae32"

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
