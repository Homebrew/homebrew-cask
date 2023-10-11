cask "kuaitie" do
  version "3.5.0"
  sha256 "9c7b01e911c4aacd841a1962d8ff677bec48d377759d79c03111c0ff354fd122"

  url "https://dl.clipber.com/mac/copies_#{version.dots_to_underscores}.dmg"
  name "kuaitie"
  desc "Cross-platform cloud clipboard synchronization tool"
  homepage "https://home.clipber.com/"

  livecheck do
    url "https://clipber.com/getmac"
    regex(/copies[._-]v?(\d+(?:_\d+)+)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map do |match|
        match[0].tr("_", ".").to_s
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "kuaitie.app"

  uninstall quit: "manager.clipboard.kuaitie"

  zap trash: [
    "~/Library/Caches/manager.clipboard.kuaitie",
    "~/Library/HTTPStorages/manager.clipboard.kuaitie",
    "~/Library/Preferences/manager.clipboard.kuaitie.plist",
    "~/Library/WebKit/manager.clipboard.kuaitie",
  ]
end
