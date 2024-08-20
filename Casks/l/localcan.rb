cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.3.4"
  sha256 intel: "0e45cb47d36ee0123d15e7a9913dd537b54e9c1f8d30daea7649dd15be615653",
         arm:   "2ba1593a0332b6e8b06bcdeadae1cda2400bee2c45e827ed78b378be56706c03"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
