cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.39.1"
  sha256 arm:   "7c4bc35c7da6e99f287e83a49e4d68e7fc816755b88568be09fb11da60a981e7",
         intel: "47ffa273136da4c44ac25055a2fb803202ac3aab21846fb4f3c957dc0ed97b51"

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
