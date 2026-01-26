cask "elephas" do
  version "11.4010,4010"
  sha256 "1ffb275b41026c62490f15f388be2ea7a6189299494de2ebf7f06f12014ea23a"

  url "https://assets.elephas.app/Elephas_#{version.csv.second || version.csv.first}.dmg"
  name "Elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  livecheck do
    url "https://assets.elephas.app/index.xml"
    regex(/Elephas(?:%20|[._-])v?(\d+(?:[._]\d+)*)\.dmg/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      (item.short_version == match[1]) ? match[1] : "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  conflicts_with cask: "elephas@beta"
  depends_on macos: ">= :ventura"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
