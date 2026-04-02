cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.4"
  sha256 arm:   "26565b42b401e8e35ce09f235271808336624c7349a25f80f93351076b64a4fe",
         intel: "064b1200ac84a771e8f1c195fda1fa62c22090cb49d669b47ce433c11aae272c"

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
