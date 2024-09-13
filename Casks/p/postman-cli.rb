cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.10.2"
  sha256 arm:   "8a11e48272906a0bc1a49ee66e5a6da412ea62096af63aaef84f77a0285bd4df",
         intel: "eda1eb0b7468e9c145e39bf43498ae1a78e62e3d7febda827d7e90b7ab859ff9"

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
