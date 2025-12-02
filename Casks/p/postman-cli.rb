cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.26.0"
  sha256 arm:   "89710a348e009f93c3e328e00dbf3fa8651f831e8382d234355e22f2c3dbc166",
         intel: "60dd3d5676db0e9c403f13f42df86023cd52eb4545fd73389f406e52318f4a26"

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
