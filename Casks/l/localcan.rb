cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 intel: "954ec8c284eb0ca12ed95009486b460f0042d3974b6454fb28fdec4a7a5b5991",
         arm:   "9267062f9eb312015fa0bbb12e11e61139a8fe79f9e5740b965cd2b1ad6a4761"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
