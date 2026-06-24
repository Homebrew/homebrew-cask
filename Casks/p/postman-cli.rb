cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.40.0"
  sha256 arm:   "77e1e4a003c56eb5e0524cd44026ea99fb28b32745a8779e0c570fe77d81e62c",
         intel: "73dd6d189593a63285d626fb381ad88f36143095cbd8e16762553e19c8ea4644"

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
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
