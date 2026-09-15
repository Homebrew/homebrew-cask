cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.56.3"
  sha256 arm:   "ae97ddf6351af447b51576643973fdec10bb121c4e9500f031849b7fe5be911e",
         intel: "a8f8b357debc4ecaa0314e6a65db5d6e1b89ed91cd54ca45a891a26bc275acc8"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}"
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
