cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.3.7"
  sha256 intel: "bddaa50ae68927a3b4298ef0d1ec992c35796d9f4c771201e1e58691f25260ae",
         arm:   "bf2d6d880c5a1ed053eb25b2db605690068d7742b2e5eb822c11dc18866d50d8"

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
