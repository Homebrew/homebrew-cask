cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.77.0"
  sha256 arm:   "8d3424f6b5b97e8d65e802851c2b4845235573ab0e140114c06c7efb27c6926f",
         intel: "f2766e4f58019b33e2ee9b9e1d6536e0593d4cd1dcd3bd2892cb01454ef75076"

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
