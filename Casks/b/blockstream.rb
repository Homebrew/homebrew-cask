cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.1"
  sha256 arm:   "6922f5f617d466c37a3a16a354f7a5b052495255fee48f0283e3c31a23a7de8a",
         intel: "8a0d41abf0995efdf3478413f34d8317040e7659dd2843eb170e3fbb7c958b8e"

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
