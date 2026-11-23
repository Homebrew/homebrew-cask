cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.93.1"
  sha256 arm:   "e4573c230476d9240a2efeaadf18b98b40f4eacbbb1f77ff58843d6f9641ed1d",
         intel: "b1476565fc647e5480f3971c410db75329e925cc395495413edf69b5675a3fda"

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
