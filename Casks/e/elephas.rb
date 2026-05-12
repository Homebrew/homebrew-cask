cask "elephas" do
  version "11.7008,11_7008"
  sha256 "b4eed52c8791522fa33c9bba971536b782ab7524beeae09113bd2744d4c47318"

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
  depends_on macos: :ventura

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
