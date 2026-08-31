cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "2750299219367e2773bb176aa0a3664ff89e80830ca5d24ce4397127837ca5ad",
         intel: "8e610f8651d6207da0e32aefa0fb6b677b9385c22ba9e72f2ecd2147cc12225f"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}-mac-#{arch}.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "IPTVnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
