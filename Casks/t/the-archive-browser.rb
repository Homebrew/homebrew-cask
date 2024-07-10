cask "the-archive-browser" do
  version "1.11.2,111,1504018288"
  sha256 "a9cffc4d7a4e9869c9b7542dff7b9614c487623fce6404ce779b0c4b654eb72b"

  url "https://dl.devmate.com/cx.c3.thearchivebrowser/#{version.csv.second}/#{version.csv.third}/TheArchiveBrowser-#{version.csv.second}.zip",
      verified: "dl.devmate.com/cx.c3.thearchivebrowser/"
  name "The Archive Browser"
  desc "Browse the contents of archives"
  homepage "https://theunarchiver.com/archive-browser"

  livecheck do
    url "https://updates.devmate.com/cx.c3.thearchivebrowser.xml"
    regex(%r{/(\d+)/TheArchiveBrowser\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "The Archive Browser.app"

  zap trash: [
        "~/Library/Cookies/cx.c3.thearchivebrowser.binarycookies",
        "~/Library/Preferences/cx.c3.thearchivebrowser.plist",
      ],
      rmdir: [
        "~/Library/Application Support/The Archive Browser",
        "~/Library/Caches/cx.c3.thearchivebrowser",
      ]

  caveats do
    requires_rosetta
  end
end
