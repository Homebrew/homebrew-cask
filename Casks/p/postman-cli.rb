cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.29.1"
  sha256 arm:   "85acb5d71abebb098ad3cef3c583a5a817009765ab116d98321cec32546013d6",
         intel: "c17ec653a5f9074f1024cb00442189f1f024f79ab0c86c8b34b8ca557b7f3cf6"

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
