cask "meta" do
  version "2.3.2"
  sha256 "3bc8faa84aa728a06dc66d3a82f6582355f5fc2ef6c96a7198ae96a758e29e61"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Meta.app"

  zap trash: [
    "~/Library/Application Support/Meta",
    "~/Library/Caches/com.nightbirdsevolve.Meta",
    "~/Library/HTTPStorages/com.nightbirdsevolve.Meta",
    "~/Library/HTTPStorages/com.nightbirdsevolve.Meta.binarycookies",
    "~/Library/Preferences/com.nightbirdsevolve.Meta.plist",
    "~/Library/Saved Application State/com.nightbirdsevolve.Meta.savedState",
  ]
end
