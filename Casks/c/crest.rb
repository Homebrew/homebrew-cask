cask "crest" do
  version "6.4.1"
  sha256 "7b9152e78cb78cced5eaa0d0331368584eecb4b37205d3d745c73476b64bc26d"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch utility with widget pages, music controls and Claude Code prompts"
  homepage "https://crestnotch.app/"

  livecheck do
    url "https://crestnotch.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Crest.app"

  zap trash: [
    "~/.copilot/hooks/crest.json",
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest.binarycookies",
    "~/Library/Preferences/com.zack40x.crest.plist",
    "~/Library/Preferences/crest.spaces.detached.plist",
    "~/Library/WebKit/com.zack40x.crest",
  ]
end
