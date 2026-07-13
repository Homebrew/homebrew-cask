cask "simplebanking" do
  version "1.6.1,20260615-120846"
  sha256 "bbd1e2b4d33a0e8cbf6e8dfd41575e07cef60b4732ec95b3a2391953ddc77ec1"

  url "https://github.com/klotzbrocken/simplebanking/releases/download/v#{version.csv.first}/simplebanking-#{version.csv.second}.dmg"
  name "simplebanking"
  desc "Shows your bank balance in the menu bar"
  homepage "https://www.simplebanking.de/"

  livecheck do
    url "https://raw.githubusercontent.com/klotzbrocken/simplebanking/main/appcast.xml"
    regex(/simplebanking[._-](\d{8}-\d{6})\.dmg/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "simplebanking.app"

  zap trash: [
    "~/Library/Application Support/simplebanking",
    "~/Library/Caches/tech.yaxi.simplebanking",
    "~/Library/HTTPStorages/tech.yaxi.simplebanking",
    "~/Library/Preferences/tech.yaxi.simplebanking.plist",
    "~/Library/Saved Application State/tech.yaxi.simplebanking.savedState",
  ]
end
