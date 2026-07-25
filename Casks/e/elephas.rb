cask "elephas" do
  version "11.8002"
  sha256 "11fb08367487301269c7e4a2197dace2e74260a107139debdbd198d724128f00"

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
