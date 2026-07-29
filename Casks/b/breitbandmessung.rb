cask "breitbandmessung" do
  version "3.12.0"
  sha256 "42e25a353c8101541bdd20873639e1779925c53ac7ffdfc9e7a33197a97fb0ab"

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
