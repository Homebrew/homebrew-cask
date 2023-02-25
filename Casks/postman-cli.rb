cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.0.8"
  sha256 arm:   "0aef2e7946e8c11acc94c827fa47f49bd46fa9ff01031a9918b37299bd7ad781",
         intel: "8370d447dde319dc56534ad9caa879ffa4f1924ed7fe2d1269e2ff2714ee27a3"

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
