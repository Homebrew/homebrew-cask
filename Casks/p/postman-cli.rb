cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.19.0"
  sha256 arm:   "1bc52ceb458888efec7db565eaff42e75dd81529b13367a53cde4fc43d756d6b",
         intel: "b4125253ccf365d56db25953d1e35cd094b73654e9f2e38ced41a2a2dbaa2010"

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
