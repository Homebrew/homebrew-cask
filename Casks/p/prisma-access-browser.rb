cask "prisma-access-browser" do
  version "155.16.5.40,69c78637"
  sha256 "8b275d49677ad7608dd7d5db07ad3f77fdd5a08cc0efc9a78c1913b4c82d4ae1"

  url "https://updates.talon-sec.com/releases/Prisma%20Access%20Browser/mac/packaged/universal/Prisma%20Access%20Browser-#{version.csv.first}-#{version.csv.second}.pkg"
  name "Prisma Access Browser"
  desc "Secure enterprise browser with built-in threat and data protection"
  homepage "https://get.pabrowser.com/welcome"

  # The upstream appcast uses "stable" and "lts" channels, with older releases
  # in the default channel as well. It's possible for a release to be in both
  # the "stable" and "lts" channels, so this works with releases in the "stable"
  # or default channels.
  livecheck do
    url "https://releases.talon-sec.com/api/v1/appcast.xml?appid=%7Bdfef2477-4f0e-454b-bc0d-03ce61074e4c%7D&platform=mac&architecture=universal&channel=packaged"
    regex(/[._-]v?(\d+(?:\.\d+)+)[._-](\h+)\.pkg/i)
    strategy :sparkle do |items, regex|
      item = items.find do |item|
        (item_channel = item.channel) == "stable" || item_channel.nil?
      end
      next unless item

      match = item.url&.match(regex)
      next unless match

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "PrismaBrowser-universal.pkg"

  uninstall launchctl: [
              "com.paloaltonetworks.prismaaccessbrowserupdater.agent",
              "com.paloaltonetworks.prismaaccessbrowserupdater.daemon",
              "com.paloaltonetworks.PrismaAccessBrowserUpdater.wake.system",
              "com.paloaltonetworks.prismaaccessbrowserupdater.xpcservice",
            ],
            quit:      "com.talon-sec.Work",
            pkgutil:   "com.talon-sec.Work"

  zap delete: [
        "/Library/Application Support/PAB",
        "/Library/PAB",
      ],
      trash:  [
        "~/Library/Application Support/PAB",
        "~/Library/Caches/com.paloaltonetworks.PrismaAccessBrowserUpdater",
        "~/Library/Caches/PAB",
        "~/Library/HTTPStorages/com.paloaltonetworks.PrismaAccessBrowserUpdater",
        "~/Library/PAB",
      ]
end
