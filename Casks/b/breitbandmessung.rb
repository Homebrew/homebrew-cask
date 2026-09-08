cask "breitbandmessung" do
  version "3.12.1"
  sha256 "f33cec43ceae7577f835e4d8af182b6f6f0de70c11698ac002d6791ffd53e70e"

  url "https://download.breitbandmessung.de/bbm/Breitbandmessung-#{version}-mac.dmg"
  name "Breitbandmessung"
  desc "Official internet speed test from the German Bundesnetzagentur"
  homepage "https://www.breitbandmessung.de/"

  livecheck do
    url "https://download.breitbandmessung.de/bbm/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Breitbandmessung.app"

  zap trash: [
    "~/Library/Application Support/Breitbandmessung",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zafaco.breitbandmessung.sfl*",
    "~/Library/Preferences/com.zafaco.breitbandmessung.plist",
  ]
end
