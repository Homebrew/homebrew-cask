cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.28.0"
  sha256 arm:   "ee43c664a7ef1cea831a74b150c8bbc0cda6e2cddd8f970d0d6c54ca306aa88d",
         intel: "808d1bf92b3241ccdfd374052a8f821bb7859311199c87e9b73ab9138c56e1e8"

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
