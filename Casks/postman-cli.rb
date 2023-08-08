cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.2.0"
  sha256 arm:   "cc4d02b51728eb114da870e6696b594128709f1390dde64046ab6067b6ab614f",
         intel: "ccb926276bac069e424e2a2b53fea2302aa5184759bbf865fd566cf29c7bfb64"

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
