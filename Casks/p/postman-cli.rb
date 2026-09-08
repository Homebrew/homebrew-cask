cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.56.0"
  sha256 arm:   "bc93a09a17122ae0cc621942f339f09301cc4d4b8edc39545a1158300df2fff1",
         intel: "5649efd0cba5cf2607c8483f257dad616b65b26a3e8a985ae8b208ccca9c97ea"

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
