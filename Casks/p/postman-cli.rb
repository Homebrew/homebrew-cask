cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.82.0"
  sha256 arm:   "d36ae6a7d1bbf23ce40237ae339aae5e8ad0f6a957d8cc40b1047053361f94dd",
         intel: "71b6e618a5070edff2515361713a3a648378cde100483cbf5b6fcb8b6360d93c"

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
