cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.68.0"
  sha256 arm:   "ccc806e5fdf7de1c77d95bbdf30dfb9f2b42461da0b9b6670ee6b4ee66920abc",
         intel: "d0facecbc08d145a561764fc93db9d8880eb93aa9d2eada7b16a58acc7751909"

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
