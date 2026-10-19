cask "peekx" do
  version "1.1"
  sha256 "675bc6fd4c357db5e2fb1ef053d2be8df92bcc397e751abf591810d659a5a733"

  url "https://github.com/altic-dev/PeekX/releases/download/v#{version}/PeekX-#{version}.dmg"
  name "PeekX"
  desc "Utility to quick view folders in finder"
  homepage "https://github.com/altic-dev/PeekX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PeekX.app"

  zap trash: [
    "~/Library/Application Support/com.altic-dev.PeekX",
    "~/Library/Caches/com.altic-dev.PeekX",
    "~/Library/Preferences/com.altic-dev.PeekX.plist",
  ]
end
