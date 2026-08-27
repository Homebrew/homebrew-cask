cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.51.0"
  sha256 arm:   "efb8dd81524d33d9f560180959f4063d1e797da00748493d113bd0f6a504f9b3",
         intel: "a4f58f5d768b9588bc11b95eadc96717d72a04bc8fc8706649b8ebb684888105"

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
