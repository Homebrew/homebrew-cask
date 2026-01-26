cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.0"
  sha256 arm:   "3e830023986d93de83239c02fb351077cbdd4443cc52ce773586e89f871ed893",
         intel: "42b647be0063718053d4e68c5eff9bc6578ef08f47d538b9224aa5ef803a5914"

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
