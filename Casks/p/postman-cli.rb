cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.13.0"
  sha256 arm:   "f64cfd180549767329bca3dc16291cf0844693edc217c3ed59996fd5ccead907",
         intel: "5dafa20cb2cf7b7687348a84298c9ec735c5a707e969a7b7cb5cca3c1170084d"

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
