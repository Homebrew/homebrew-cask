cask "anydrag" do
  version "26.11.127"
  sha256 "8bb41742e01033381fb052dbcabbf7e07eba4402a7d150579bf242ecd673daf6"

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
