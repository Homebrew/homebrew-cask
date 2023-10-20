cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.4.1"
  sha256 arm:   "51144f493aace42416d34aca7a193ab93f51121de7d3faf79cdcc79bba4312ca",
         intel: "778d94dc618d7c399d958e1114eac612633866cb1a7b86b13ea2d44c14ea1be7"

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
