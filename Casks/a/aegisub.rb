cask "aegisub" do
  arch arm: "arm64", intel: "x64"

  version "3.5.1"
  sha256 arm:   "593ecfec16e9d318677bb123cb382eace1b81e75f58716f0f3e3b1df31e752e6",
         intel: "54b1e56a7f496b723f4fac6110e692775281864244de4fb918d71cc48463864e"

  url "https://github.com/TypesettingTools/Aegisub/releases/download/v#{version}/Aegisub-#{version}-#{arch}.dmg"
  name "Aegisub"
  desc "Create and modify subtitles"
  homepage "https://github.com/TypesettingTools/Aegisub/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Aegisub.app"

  uninstall quit: "com.aegisub.aegisub"

  zap trash: [
    "~/Library/Application Support/Aegisub",
    "~/Library/Preferences/com.aegisub.aegisub.plist",
    "~/Library/Saved Application State/com.aegisub.aegisub.savedState",
  ]
end
