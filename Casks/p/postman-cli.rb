cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.2.1"
  sha256 arm:   "e41a69eed7dd14ec064712efb11c45f27fe1ab534012880dc9a292d8f041894a",
         intel: "6c036f98edd999d11eff14d59986e10f7bb7ce8f5348319b49e408dbd42cbbea"

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
