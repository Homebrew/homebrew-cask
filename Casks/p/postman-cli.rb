cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.62.0"
  sha256 arm:   "15c1ddd210d1cc304f26f60e47bfe3802818d0f7d4a0587469a548af104eb3fe",
         intel: "076a546bb80f5b1caab11079168ac20651a98548c5bfc52440037be3944be94a"

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
