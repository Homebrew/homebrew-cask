cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.76.0"
  sha256 arm:   "746cae21139bf3cfd2d4f3a678fea04b064dd5d330fcd75815b858a2a277c655",
         intel: "134908a4ecd579920d32a205834246088f752169e2b0904c9b029896aaae6615"

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
