cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.63.0"
  sha256 arm:   "2a38e40c1f865cdbb0e57034127d08af451fa6a653443f0b551c71e8877cf356",
         intel: "7558cc96764ae7dae1b121bce751b6ef4f25745ffd414fba96f40ed632362661"

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
