cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.14.1"
  sha256 arm:   "e2711455bf74886d38a14e5310e98a129ed5bae7a9fd17c63d2ad6fe05881323",
         intel: "fff24a48bdfcf1ad985ef558a279ba5143b52c265e341a15fe419fb79769af2f"

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
