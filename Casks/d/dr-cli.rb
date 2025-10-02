cask "dr-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "0.0.3"
  sha256 arm:          "9d639dc6ba227bc1fdd6caa6d600249164455015d95ee77627b33666fb90a8ef",
         x86_64:       "996429ccfccc727fa5a2409c2491fc7d3c6b2c76164202e28e20892d494e6330",
         x86_64_linux: "f2856f043159bab19c2f3ae7dee15217be39173eb3e8a57c050c8e4763b77175",
         arm64_linux:  "a7854ad1d071bddaff847565bd2e923d695d41382aeede31cfc9b7bb1934f030"

  url "https://github.com/datarobot-oss/cli/releases/download/v#{version}/dr_v#{version}_#{os}_#{arch}.tar.gz",
      verified: "github.com/datarobot-oss/cli/"
  name "DataRobot CLI"
  desc "DataRobot command-line interface"
  homepage "https://www.datarobot.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "dr"

  # No zap stanza required
end
