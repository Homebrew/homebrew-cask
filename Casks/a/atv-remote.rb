cask "atv-remote" do
  arch arm: "-arm64"

  version "1.3.7"
  sha256 arm:   "9d38b971f15fcb4408cdfaea6e4c3c2885939f73b2fc0249aa6e9d15150bd10a",
         intel: "1956ca8b1092e08296813335f147573925331e0b2ed6b8cf7b72f80f58e7ff95"

  url "https://github.com/bsharper/atv-desktop-remote/releases/download/v.#{version}/ATV.Remote-#{version}#{arch}.dmg"
  name "ATV Remote"
  desc "Control Apple TV from your desktop"
  homepage "https://github.com/bsharper/atv-desktop-remote"

  depends_on macos: ">= :high_sierra"

  app "ATV Remote.app"

  zap trash: [
    "~/Library/Application Support/ATV Remote",
    "~/Library/Preferences/com.electron.atvDesktopRemote.plist",
    "~/Library/Saved Application State/com.electron.atvDesktopRemote.savedState",
  ]
end
