cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.4"
  sha256 arm:   "e2f47d23d5dbfaee4f40ebb7c1e37d7cfce68d4677382ef4ae4f0d199e86ad0d",
         intel: "61fa2b8a54d80d6bb8361950f6c576140f1a1452be4e22d15a260599f55394f9"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
