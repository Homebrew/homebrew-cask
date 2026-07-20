cask "cockatrice" do
  on_monterey :or_older do
    version "2.9.0,2023-09-14,Rings.of.the.Wild"
    sha256 "4524c5b95928e88073d1f8be46d881288d6d0bf07d8e65185fbebc0491f29e08"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.first}-macOS-11_Big_Sur.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"

    livecheck do
      skip "Legacy version"
    end

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    version "3.0.1,2026-05-23,Graduation-Day,3.0.1"

    on_ventura do
      sha256 "9042482b3d04e3760371ce51111e2ac23fce6f5eb6a49d10ff7e13e1fe34bb7f"

      url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS13_Intel.dmg",
          verified: "github.com/Cockatrice/Cockatrice/"

      caveats do
        requires_rosetta
      end
    end
    on_sonoma do
      sha256 "f9a738f1ec2249658dd49b5157de3ffe7ef63d71baf44470989c79568a6bea3d"

      url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS14.dmg",
          verified: "github.com/Cockatrice/Cockatrice/"
    end
    on_sequoia :or_newer do
      sha256 "a721aebca11e6acd3a0dbfe922521e975e819c836f053789d0acff844cab7915"

      url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.csv.second}-Release-#{version.csv.first}/Cockatrice-#{version.csv.third}-#{version.csv.fourth}-macOS15.dmg",
          verified: "github.com/Cockatrice/Cockatrice/"
    end

    livecheck do
      url :url
      regex(%r{/(\d+(?:-\d+)+)-Release-([^/]+)/Cockatrice-(.+?)-(\d+(?:\.\d+)+(?:-beta)?)-macOS[.\w]*\.dmg$}i)
      strategy :github_latest do |json, regex|
        json["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          "#{match[2]},#{match[1]},#{match[3]},#{match[4]}"
        end
      end
    end
  end

  name "Cockatrice"
  desc "Virtual tabletop for multiplayer card games"
  homepage "https://cockatrice.github.io/"

  depends_on macos: :big_sur

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
