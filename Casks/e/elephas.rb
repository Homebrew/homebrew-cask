cask "elephas" do
  version "11.6009,6009"
  sha256 "f06cb8dc02b86a488b17ea59c7f16b16d5860b2dc7201163f58d6ca5dec0645a"

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
