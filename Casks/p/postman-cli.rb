cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.23.1"
  sha256 arm:   "c0e06a10865253f60a107318ca462ab1a73fd2a842545fdaa5ef4c52872697ee",
         intel: "37f22ea6b7c94eff01cd1bed23b8ad8f34a5dc816f43cc3f5fcdfafcf53972b2"

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
