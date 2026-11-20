cask "afterglow" do
  version "1.1"
  sha256 "4a2aa46aac35c2bf1c951e55ea700f2e5dd91f98cd764cdafa9a246e3b382771"

  url "https://morphing.cloud/afterglow/Afterglow-v#{version}.dmg"
  name "Afterglow"
  desc "Classic After Dark screen savers emulator"
  homepage "https://morphing.cloud/afterglow/"

  livecheck do
    url "https://morphing.cloud/afterglow/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Afterglow.app"

  zap trash: [
    "~/Library/Application Support/Afterglow",
    "~/Library/Caches/cloud.morphing.afterglow",
    "~/Library/HTTPStorages/cloud.morphing.afterglow",
    "~/Library/Preferences/cloud.morphing.afterglow.plist",
  ]
end
