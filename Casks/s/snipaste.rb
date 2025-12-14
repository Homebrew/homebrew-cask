cask "snipaste" do
  version "2.11.2"
  sha256 "600a1f07612ba0876d96f8d7e95329e8e6df1f2176a88649d497f71fd8337110"

  url "https://download.snipaste.com/archives/Snipaste-#{version}.dmg"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac"
    regex(/Snipaste[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
