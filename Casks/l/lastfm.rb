cask "lastfm" do
  version "2.1.39"
  sha256 "0b86111e68c3e54edd68e1a00a4390e3b13d10f6166161619cc8cadcfd053eba"

  url "https://cdn.last.fm/client/Mac/Last.fm-#{version}.zip"
  name "Last.fm Scrobbler"
  desc "Music services manager"
  homepage "https://www.last.fm/"

  livecheck do
    url "https://cdn.last.fm/client/Mac/updates.xml"
    strategy :sparkle
  end

  app "Last.fm.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Last.fm*",
    "~/Library/Application Support/Last.fm",
    "~/Library/Caches/fm.last.Scrobbler",
    "~/Library/Caches/Last.fm",
    "~/Library/Logs/Last.fm",
    "~/Library/Preferences/fm.last*",
  ]

  caveats do
    requires_rosetta
  end
end
