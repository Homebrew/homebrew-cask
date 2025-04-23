cask "elephas" do
  version "11.1086,11_1086"
  sha256 "33a479630b0699bbf724f861c677732a3979701c6055c40e78aa28b9bef33216"

  url "https://assets.elephas.app/Elephas_#{version.csv.second}.dmg"
  name "Elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  livecheck do
    url "https://assets.elephas.app/index.xml"
    regex(/Elephas[._-]v?(\d+(?:[._]\d+)*)\.dmg/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  conflicts_with cask: "elephas@beta"
  depends_on macos: ">= :monterey"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
