cask "playback" do
  version "1.6.0"
  sha256 "32588de0f9f8c6281cae11e4f64f5f4e4d3919f5d8b94d03be4d8552fbd8f0a8"

  url "https://github.com/mafintosh/playback/releases/download/v#{version}/Playback.app.zip",
      verified: "github.com/mafintosh/playback/"
  name "Playback"
  desc "Video player"
  homepage "https://mafintosh.github.io/playback/"

  deprecate! date: "2024-07-28", because: :unmaintained

  app "Playback.app"

  zap trash: [
    "~/Library/Application Support/playback",
    "~/Library/Caches/playback",
    "~/Library/Preferences/com.electron.playback.plist",
  ]

  caveats do
    requires_rosetta
  end
end
