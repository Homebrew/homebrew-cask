cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "36c0d7f84b09c6f1ba6072049b9a2d82ca8278b12b6612b77cfd1180d6a32a65",
         intel: "3e488732198e4053557240813b8debf56bd6f5f2c326a88fea928872eb565e16"

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
