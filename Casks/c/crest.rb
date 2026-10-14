cask "crest" do
  version "6.5.2"
  sha256 "0c1a20a44babf6b2b5fb9ba658f9039a0e3babb00c3bc0676e7b532a7a155b76"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch utility with widgets"
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
