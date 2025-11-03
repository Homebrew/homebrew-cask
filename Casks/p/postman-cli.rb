cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.23.0"
  sha256 arm:   "5dc8ffe0e483678a42ed55b689d9d64fed2f948309a69f79b9f40d237891d64a",
         intel: "1d1582cdaa15350ba8012968392443badd2243f7ebccd513aed5118979eafd91"

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
