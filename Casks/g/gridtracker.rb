cask "gridtracker" do
  on_sonoma :or_older do
    version "1.24.0922,0681"
    sha256 "f71b870490e2ddaa00bf0850343c82eeed01417642bb7b66b794b7a46eee0a36"

    livecheck do
      url "https://gridtracker.org/index.php/downloads/gridtracker-downloads"
      regex(/href=.*?mac[._-](\d+)[._-]x64\.zip">\s*GridTracker\s+v?(\d+(?:\.\d+)+)\s*</i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  end
  on_sequoia :or_newer do
    version "1.24.0922,0781"
    sha256 "8421a291b23da080a8e7c1f9eaf0904b5dcf46252a450a1c35c22145312a934e"

    livecheck do
      url "https://gridtracker.org/index.php/downloads/gridtracker-downloads"
      regex(/href=.*?mac[._-](\d+)[._-]x64\.zip">\s*GridTracker\s+v?(\d+(?:\.\d+)+)\s+Sequoia\s*</i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  end

  url "https://downloads.gridtracker.org/mac_v#{version.csv.first}/GridTracker-#{version.csv.first}-mac-#{version.csv.second}-x64.zip"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/"

  depends_on macos: ">= :mojave"

  app "GridTracker.app"

  zap trash: [
    "~/Library/Application Support/GridTracker",
    "~/Library/Caches/GridTracker",
    "~/Library/Preferences/org.gridtracker.gridtracker.plist",
    "~/Library/Saved Application State/org.gridtracker.gridtracker.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
