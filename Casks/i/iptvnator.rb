cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "fe80e4daea326ac34dc200910c7fafb8843e13cd3ba25371fe04aa74fecf7895",
         intel: "378523ba7560ce053ae274fdca8f0e01bde8bcbfb1c630bd95d4755889b98fbf"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}-mac-#{arch}.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "iptvnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
