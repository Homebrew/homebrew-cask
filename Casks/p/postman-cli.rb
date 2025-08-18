cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.18.0"
  sha256 arm:   "98937c3414b6c53d582af697f1b7a1174e1a1dfe54965b7baa515c5c1d649734",
         intel: "e4be4bc69f5e12ea0e7cd3c65253ce9a6a4112bb018fdafc761841269383d073"

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

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
