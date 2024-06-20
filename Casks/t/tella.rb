cask "tella" do
  version "1.23,14385"
  sha256 "f72caeddc90cf5725a0ddaf98a43b2e5f082a6b6ca459cada31d946c26d33f00"

  url "https://mac.tella.tv/rw.#{version.csv.second}.Tella-#{version.csv.first}.dmg"
  name "Tella"
  desc "Screen recorder"
  homepage "https://www.tella.tv/"

  livecheck do
    url "https://mac.tella.tv/appcast.xml"
    regex(/rw[._-](\d+)\.Tella/i)
    strategy :sparkle do |item|
      extra_part = item.url[regex, 1]
      next if extra_part.blank?

      "#{item.short_version},#{extra_part}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Tella.app"

  zap trash: [
    "~/Library/Application Scripts/tv.tella.Tella",
    "~/Library/Containers/tv.tella.Tella",
    "~/Library/Preferences/tv.tella.Tella.plist",
  ]
end
