cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.15.0"
  sha256 arm:   "54226d79a436a1b1675ef5c1ac95cf43ce9a07b2c42e2938b9faf6f0d4128d92",
         intel: "509c7100738efbbfd88eaf65a1547fb82dc17b41d64387824adc7043548deed5"

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
