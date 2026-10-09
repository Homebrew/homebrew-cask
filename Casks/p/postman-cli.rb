cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.73.0"
  sha256 arm:   "08c977af5bb1a1622e2324c5a238396d068da35973dd5c0cabf018393f846b40",
         intel: "16871a54cdb7a15f1d4128d1d91376097343228d3930ed54a552e18dca954a63"

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
