cask "trainerroad" do
  version "2026.29.2.468"
  sha256 "49851b970827ce158b7cc7e2f8390e994ae5436cf44036be0eed7c4ef46d5b9a"

  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad-#{version}.dmg"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  livecheck do
    url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
    regex(/TrainerRoad[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "TrainerRoad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.trainerroad.mac.sfl*",
    "~/Library/Application Support/TrainerRoad",
    "~/Library/Preferences/com.trainerroad.mac.plist",
  ]

  caveats do
    requires_rosetta
  end
end
