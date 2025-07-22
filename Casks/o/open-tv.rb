cask "open-tv" do
  version "1.8.3"
  sha256 "380d23f98d80babf7c79dfe71bc609156e475d8bf2805c2f177c5847d6d6769d"

  url "https://github.com/fredolx/open-tv/releases/download/v#{version}/Open.TV_#{version}_universal.dmg"
  name "Open TV"
  desc "Ultra-fast, simple and powerful cross-platform IPTV app"
  homepage "https://github.com/Fredolx/open-tv"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Open TV.app"

  depends_on formula: "mpv"
  depends_on formula: "ffmpeg"
  depends_on formula: "yt-dlp"
  depends_on macos: ">= :high_sierra"

  zap trash: [
    "~/Library/Application Support/dev.fredol.open-tv",
    "~/Library/Caches/dev.fredol.open-tv",pp
  ]
end
