cask "electorrent" do
  version "2.8.4"
  sha256 "153622582480ed5d40fe99c745786dbd0979ef17e16f69e0978cbc88049276f3"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  livecheck do
    url "https://electorrent.vercel.app/update/dmg/0.0.0"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  auto_updates true

  app "Electorrent.app"

  zap trash: [
    "~/Library/Application Support/Electorrent",
    "~/Library/Preferences/com.github.tympanix.Electorrent.plist",
    "~/Library/Saved Application State/com.github.tympanix.Electorrent.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
