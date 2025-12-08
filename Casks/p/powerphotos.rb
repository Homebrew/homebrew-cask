cask "powerphotos" do
  on_ventura :or_older do
    on_catalina :or_older do
      version "1.9.14"
      sha256 "760bfa114e0a6c807613c689c84ac5eceeae2763bcf246b104636d2d862676f1"

      url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"
    end
    on_big_sur do
      version "2.1.8"
      sha256 "b9fbf7b188e157b20b779611d5fd4f922574d8818517f4341a538c06bbfcd88d"

      url "https://www.fatcatsoftware.com/powerphotos/downloads/PowerPhotos_#{version.no_dots}.zip"
    end
    on_monterey :or_newer do
      version "2.7.8"
      sha256 "3a1e2dca4adda2d976721178f5df5667fa0ada2923a74131f2f7fa5e767d4aae"

      url "https://www.fatcatsoftware.com/powerphotos/downloads/PowerPhotos_#{version.no_dots}.zip"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "3.2.1"
    sha256 :no_check

    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos.zip"

    livecheck do
      url "https://www.fatcatsoftware.com/powerphotos/downloads/appcast.xml"
      strategy :sparkle do |items|
        items.find { |item| item.channel.nil? }&.short_version
      end
    end
  end

  name "PowerPhotos"
  desc "Tool to organise photo libraries"
  homepage "https://www.fatcatsoftware.com/powerphotos/"

  auto_updates true

  app "PowerPhotos.app"

  zap trash: [
    "~/Library/Application Scripts/8NQ43ND65V.com.fatcatsoftware.PowerPhotosLibraryList",
    "~/Library/Application Support/com.fatcatsoftware.PowerPhotos",
    "~/Library/Caches/com.fatcatsoftware.PowerPhotos",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.fatcatsoftware.PowerPhotos",
    "~/Library/Group Containers/8NQ43ND65V.com.fatcatsoftware.PowerPhotosLibraryList",
    "~/Library/HTTPStorages/com.fatcatsoftware.PowerPhotos",
    "~/Library/Logs/PowerPhotos",
    "~/Library/Preferences/com.fatcatsoftware.PowerPhotos.plist",
    "~/Library/Saved Application State/com.fatcatsoftware.PowerPhotos.savedState",
  ]
end
