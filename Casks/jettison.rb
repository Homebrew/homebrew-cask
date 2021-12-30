cask "jettison" do
  version "1.8.4,3396"
  sha256 "b69dde9d18d0f499789327123d9f26fa9742522364973a1ceed725620d1fd56b"

  url "https://stclairsoft.com/download/Jettison-#{version.csv.first}.dmg"
  name "Jettison"
  name "St. Clair Software Jettison"
  desc "Automatically ejects external drives"
  homepage "https://stclairsoft.com/Jettison/"

  livecheck do
    url "https://stclairsoft.com/cgi-bin/sparkle.cgi?JT"
    strategy :sparkle
  end

  auto_updates true

  app "Jettison.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*",
    "~/Library/Application Support/Jettison",
    "~/Library/Preferences/com.stclairsoft.Jettison.plist",
    "~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist",
    "~/Library/Caches/com.stclairsoft.Jettison",
  ]
end
