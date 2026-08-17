cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.47.2"
  sha256 arm:   "b919995a5b764271519472e59e1dd5df154beb2a801e3a851981e0a74b06d843",
         intel: "44eca0573cdf394c178c594332fe1be4cef741855d338ebdec663feb6e5ce15f"

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
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end
