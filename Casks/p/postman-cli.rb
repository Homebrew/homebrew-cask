cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.66.0"
  sha256 arm:   "3284682ac8c731031843c22e458298fe3c1d32bedd045cbb76e266314bdd2597",
         intel: "b6004fe5885b15cbdb36163627c7efae4beb2178b3950a0eb0eb1752f2c992a3"

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
