cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "1d363c34a2e139e600ede9341e7e3d230bbe6ebaa26cdba54004e2e23bd2f27f",
         intel: "c4f523acea9098ba3fcc69d0bd1e85fe5b915f76de3a37add0ac820187652d25"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
