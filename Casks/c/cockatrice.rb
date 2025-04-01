cask "cockatrice" do
  on_monterey :or_older do
    version "2.9.0,2023-09-14,Rings.of.the.Wild"
    sha256 "4524c5b95928e88073d1f8be46d881288d6d0bf07d8e65185fbebc0491f29e08"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.first}-macOS-11_Big_Sur.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"

    caveats do
      requires_rosetta
    end
  end
  on_ventura do
    version "2.10.1,2025-03-27,Omenpath,2.10.1"
    sha256 "a342b4560cf69f9eccad5c3446ba74ed94068edbb3a8439210f6b4f0c777ffcd"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS13_Intel.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma do
    version "2.10.1,2025-03-27,Omenpath,2.10.1"
    sha256 "2b104fb1c689264e8fdd727919fe4639e7e874de474acb9d546719e5c724b67d"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS14_Apple.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"
  end
  on_sequoia :or_newer do
    version "2.10.1,2025-03-27,Omenpath,2.10.1"
    sha256 "700abf83e88bf1f7f13c80bba9d70fd68b2a7c64b1d3ee63d5e2888cf7ff80f8"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS15_Apple.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"
  end

  name "Cockatrice"
  desc "Virtual tabletop for multiplayer card games"
  homepage "https://cockatrice.github.io/"

  livecheck do
    url :url
    regex(%r{/(\d+(?:-\d+)+)-Release-([^/]+)/Cockatrice-([^-]+)-(\d+(?:\.\d+)+(?:-beta)?)-macOS[.\w]*\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]},#{match[3]},#{match[4]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "cockatrice.app"
  app "oracle.app"
  app "servatrice.app"

  uninstall quit: [
    "com.cockatrice.cockatrice",
    "com.cockatrice.oracle",
    "com.cockatrice.servatrice",
  ]

  zap trash: [
    "~/Library/Application Support/Cockatrice",
    "~/Library/Preferences/com.cockatrice.Cockatrice.plist",
    "~/Library/Preferences/com.cockatrice.oracle.plist",
    "~/Library/Preferences/de.cockatrice.Cockatrice.plist",
    "~/Library/Saved Application State/com.cockatrice.cockatrice.savedState",
    "~/Library/Saved Application State/com.cockatrice.oracle.savedState",
  ]
end
