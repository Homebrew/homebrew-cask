cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.1.0"
  sha256 arm:   "00d29ea911a53cb034af26f0ee70d06e94d3b12ac02e0f98717a3cdfdeed30c3",
         intel: "45871dedd18474ea13494f3493d5ef76ace4136d0eb673698f322157b529d864"

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
