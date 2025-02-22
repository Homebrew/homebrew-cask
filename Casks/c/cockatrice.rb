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
    version "2.10.0,2025-02-10,Omenpath,2.10.1-beta"
    sha256 "148e26c4d8ebe311c4256ed4815c4026db15a59abacb4d6ebe6b8c8ac3f64558"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS13_Intel.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma do
    version "2.10.0,2025-02-10,Omenpath,2.10.1-beta"
    sha256 "bd591730fd160d12607167a3bdcc801e86fa8604881cb8d51e6b76f85ca2b243"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS14_Apple.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"
  end
  on_sequoia :or_newer do
    version "2.10.0,2025-02-10,Omenpath,2.10.1-beta"
    sha256 "374a1e72f9548fa2931b02f8b7f638ac21b958d7dc8dfb6a0846a2d2a2c37d9a"

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
