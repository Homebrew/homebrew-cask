cask "powerphotos" do
  on_el_capitan :or_older do
    version "1.2.3"
    sha256 "b07eb9f8801fb397d55e3dd7e0569dbef5d3265debaf3ee68247062901d93fcb"

    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "1.4.2"
    sha256 "ed9be64f4cb5a3d3848ad5177947bd8cd33e36846ea36266ef9d4d7b46813538"

    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "1.6.4"
    sha256 "e7c7d5970b734827a5f112029491d2d97f9a6bb318f457893905718bea6b595a"

    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "1.8.5"
    sha256 "365b6c8c9f5e356daa56ae2666498b826746cc1301ee3acdbe66379e7d3e67d0"

    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "1.9.12"
    sha256 "cbb7cb47b20d947bc8bb30dc29e6eba88ba1e39d073bc304962e3f4759c8f0be"

    url "https://www.fatcatsoftware.com/powerphotos/PowerPhotos_#{version.no_dots}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "2.1.8"
    sha256 "b9fbf7b188e157b20b779611d5fd4f922574d8818517f4341a538c06bbfcd88d"

    url "https://www.fatcatsoftware.com/powerphotos/downloads/PowerPhotos_#{version.no_dots}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "3.0.5"
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
