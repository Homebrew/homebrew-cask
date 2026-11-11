cask "anydrag" do
  version "26.11.126"
  sha256 "3102019332435e9bca7245dcb6e685c9bb30fb33bf5f9ebe35603d8b92ffe5f7"

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
