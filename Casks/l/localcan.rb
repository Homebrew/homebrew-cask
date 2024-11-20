cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.3.5"
  sha256 intel: "f57d8a8879150fe63fc4fec828cb7085229cc95cec6faa387f8670ab7edbfa5c",
         arm:   "4034fd036446eaa7c6621f1979247848c55907d22a40f96758732485df42d050"

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
