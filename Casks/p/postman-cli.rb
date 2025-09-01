cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.18.1"
  sha256 arm:   "89597e7754a9b7af61b1e9ad5b23b0d4d69d8c623b98bf524b09a175dce20a61",
         intel: "d48594b5df9af03cca184b36d5011c62bbcbd2f886b2d44ff55dd4658a8bc5f9"

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
