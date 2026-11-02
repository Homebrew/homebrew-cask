cask "anydrag" do
  version "26.11.122"
  sha256 "41016f14db97885a311f3dac768074652e45bbbcf6ab3c9540f1d4732f8b5ce3"

  url "https://github.com/XueshiQiao/AnyDrag/releases/download/v#{version}/AnyDrag.dmg"
  name "AnyDrag"
  desc "Move any window by holding a modifier key and dragging anywhere on it"
  homepage "https://github.com/XueshiQiao/AnyDrag"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "AnyDrag.app"

  zap trash: [
    "~/Library/Application Support/AnyDrag",
    "~/Library/Caches/me.xueshi.anydrag",
    "~/Library/HTTPStorages/me.xueshi.anydrag",
    "~/Library/Logs/AnyDrag",
    "~/Library/Preferences/me.xueshi.anydrag.plist",
  ]
end
