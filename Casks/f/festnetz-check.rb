cask "festnetz-check" do
  version "3.13.0"
  sha256 "72c243851075fcf2fe20c17d00b66d91e1a2cfe9a1bebb74217d9b3847d780e9"

  url "https://download.breitbandmessung.de/bbm/Festnetz-Check-#{version}-mac.zip"
  name "Festnetz-Check"
  name "Breitbandmessung"
  desc "Official internet speed test from the German Bundesnetzagentur"
  homepage "https://www.breitbandmessung.de/"

  livecheck do
    url "https://download.breitbandmessung.de/bbm/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Festnetz-Check.app"

  zap trash: [
    "~/Library/Application Support/Breitbandmessung",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zafaco.breitbandmessung.sfl*",
    "~/Library/Preferences/com.zafaco.breitbandmessung.plist",
  ]
end
