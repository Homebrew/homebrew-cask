cask "clippy" do
  version "1.0.9"
  sha256 "fbea39c4fd1d0c22221f2cb1b1b389783129ecd5e6c81c91857d20153b45f9b7"

  url "https://github.com/yarasaa/Clippy/releases/download/v#{version}/Clippy-v1.dmg",
      verified: "github.com/yarasaa/Clippy/"
  name "Clippy"
  desc "Clipboard manager with content-aware previews, AI, and screenshot editor"
  homepage "https://github.com/yarasaa/Clippy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Clippy.app"

  zap trash: [
    "~/Library/Application Support/Clippy",
    "~/Library/Caches/com.yarasa.Clippy",
    "~/Library/HTTPStorages/com.yarasa.Clippy",
    "~/Library/Preferences/com.yarasa.Clippy.plist",
    "~/Library/Saved Application State/com.yarasa.Clippy.savedState",
  ]
end
