cask "prisma-access-browser" do
  version "150.49.5.129,6a8a165d"
  sha256 "4bcf5d4532851a02a62cbcd84adcb3ca50cc1b2670102f16639e78f0a2672943"

  url "https://updates.talon-sec.com/releases/Prisma%20Access%20Browser/mac/packaged/universal/Prisma%20Access%20Browser-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "updates.talon-sec.com/"
  name "Prisma Access Browser"
  desc "Secure enterprise browser with built-in threat and data protection"
  homepage "https://get.pabrowser.com/welcome"

  livecheck do
    url "https://releases.talon-sec.com/api/v1/appcast.xml?appid=%7Bdfef2477-4f0e-454b-bc0d-03ce61074e4c%7D&platform=mac&architecture=universal&channel=packaged"
    strategy :sparkle do |items|
      item = items.find do |i|
        i.channel != "lts" && i.url&.match?(/-\d+(?:\.\d+)+-\h+\.pkg/i)
      end
      next if item.blank?

      match = item.url.match(/-(\d+(?:\.\d+)+)-(\h+)\.pkg/i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

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
        "~/Library/Caches/PAB",
        "~/Library/PAB",
      ]
end
