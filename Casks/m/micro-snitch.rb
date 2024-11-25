cask "micro-snitch" do
  version "1.6.1"
  sha256 "700a265156ae7c8138d7764a0ce87feba098bcaf77deed9b8d9aaa0b3c4fa197"

  url "https://sw-update.obdev.at/ftp/pub/Products/MicroSnitch/MicroSnitch-#{version}.dmg"
  name "Micro Snitch"
  desc "Monitors and reports any microphone and camera activity"
  homepage "https://www.obdev.at/products/microsnitch/index.html"

  livecheck do
    url "https://sw-update.obdev.at/update-feeds/microsnitch-2.plist"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='BundleShortVersionString']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Micro Snitch.app"

  uninstall launchctl: "at.obdev.MicroSnitchOpenAtLoginHelper",
            quit:      "at.obdev.MicroSnitch"

  zap trash: [
    "~/Library/Application Support/at.obdev.MicroSnitchOpenAtLoginHelper",
    "~/Library/Application Support/Micro Snitch",
    "~/Library/Caches/at.obdev.MicroSnitch",
    "~/Library/Containers/at.obdev.MicroSnitchOpenAtLoginHelper",
    "~/Library/Logs/Micro Snitch.log",
    "~/Library/Preferences/at.obdev.MicroSnitch.plist",
  ]
end
