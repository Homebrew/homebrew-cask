cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.2"
  sha256 arm:   "3a7aee9dee68ff248b888efc40a792d994dbcd59fe806bba404cb152e2020bb4",
         intel: "a915796c24c2d1e887f316709999da36f398c290967c330fc920d1286c37e44f"

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
