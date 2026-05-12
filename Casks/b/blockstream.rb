cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "36480116e859613be3fb3dbe40df7fd7add2d8960536ff6e86032b1a43780aa3",
         intel: "da707b02722e9c0a3017504160c3b0810520fd109cec925e430f0a9f42c59cc4"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Blockstream.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
