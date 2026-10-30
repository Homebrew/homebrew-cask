cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.83.1"
  sha256 arm:   "4f710531bc29333136fe6666073784aaffb945f010e4d26d464881bee8695383",
         intel: "ddf762da656239bf11266c7ce71462a2baf652011a8ed2ee17cc312c04b9e508"

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
