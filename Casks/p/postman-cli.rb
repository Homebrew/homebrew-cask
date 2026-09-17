cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.58.0"
  sha256 arm:   "4ef22c19808381fce1c12355e8ef8be258a324e16fa58b5abb3f4efd8bdc00c4",
         intel: "6b30fb2237c28c6083867f25cd7e95c9c0b4c7a3622dc7941acaf32dc0ec8f01"

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
