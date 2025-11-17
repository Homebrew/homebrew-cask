cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.29"
  sha256 arm:   "f4d843dbefa42427cf2961b50cf0e058459b73585c5a548c6bd54702b9d8ff99",
         intel: "3a98e92090b37e210b224b9e06324c8f98fa564278f86258759bfb53c5b35b6a"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Blockstream.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
