cask "meta" do
  version "2.3.8"
  sha256 "fe801cd7ac3c5cfe702e71f7af4c9c2d3367f37c441f0530399c3698a4a03236"

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
