cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.9.0"
  sha256 arm:   "410fe255a85fafd87cbba698114a3e15e85443e272cd298cf22db9dd0c4bf6ad",
         intel: "a3900178a7da8c9cb1216e02c0d3ae5a13062e4895e379ea3865d4aebd83875b"

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
