cask "gitkraken" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "8.3.3"

  if Hardware::CPU.intel?
    sha256 "459c650dc8b624cf7ef3d513916c678d9aae841c0d8bb58e5761d167de487aac"
  else
    sha256 "03f18ddea357ad317eda88fcb48d4e3e7b748fb77e39c9e7f58d9d2df235aada"
  end

  url "https://release.axocdn.com/#{arch}/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://support.gitkraken.com/release-notes/current/"
    regex(/Version\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "GitKraken.app"

  uninstall quit: "com.axosoft.gitkraken"

  zap trash: [
    "~/.gitkraken",
    "~/Library/Application Support/com.axosoft.gitkraken.ShipIt",
    "~/Library/Application Support/GitKraken",
    "~/Library/Caches/com.axosoft.gitkraken.ShipIt",
    "~/Library/Caches/com.axosoft.gitkraken",
    "~/Library/Caches/GitKraken",
    "~/Library/Cookies/com.axosoft.gitkraken.binarycookies",
    "~/Library/HTTPStorages/com.axosoft.gitkraken",
    "~/Library/Preferences/com.axosoft.gitkraken.helper.plist",
    "~/Library/Preferences/com.axosoft.gitkraken.plist",
    "~/Library/Saved Application State/com.axosoft.gitkraken.savedState",
  ]
end
