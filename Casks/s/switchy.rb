cask "switchy" do
  version "1.1.5,79"
  sha256 "4e7826563ee44c335a9e483ef85afc58d12b40a7df2a7f2b44161cbc5ca27e41"

  url "https://github.com/benhursenabathi/mangobuns/releases/download/switchy-v#{version.csv.first}-build#{version.csv.second}/Switchy-#{version.csv.first}.dmg"
  name "Switchy"
  desc "Switch Magic Keyboard, Trackpad and Mouse between Macs"
  homepage "https://mangobuns.com/switchy/"

  livecheck do
    url "https://mangobuns.com/switchy/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Switchy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.mangobuns.Switchy",
    "~/Library/Preferences/com.mangobuns.Switchy.plist",
  ]
end
