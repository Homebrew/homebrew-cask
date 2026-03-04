cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.0"
  sha256 arm:   "1766850e79d566a5c58fb440e43c0c22f7f35f7f40e5b679519cef3b9ffbaa90",
         intel: "0a7091b0c5c88a72f5cae9c68b18d8fb76ccd2629f19ea5efd785a2a08938501"

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
