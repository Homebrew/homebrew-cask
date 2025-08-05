cask "iptvnator" do
  version "0.16.0"
  sha256 "ccea0edb6237fc4e94be5119d111b2479774cc459fb758ab14f7abb7031180c5"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/IPTVnator-#{version}-universal.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "iptvnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
