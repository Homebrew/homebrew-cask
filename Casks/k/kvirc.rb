cask "kvirc" do
  version "5.2.8,Quasar"
  sha256 "649292862994dbba4637b047c4701034b0412b6a919caf483f739eb0c2b4179b"

  url "https://github.com/kvirc/KVIrc/releases/download/#{version.csv.first}/KVIrc-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/kvirc/KVIrc/"
  name "KVIrc"
  desc "IRC Client"
  homepage "https://www.kvirc.net/"

  livecheck do
    url :url
    regex(/^KVIrc[._-]v?(\d+(?:\.\d+)+)[._-](\w+)\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "KVIrc.app"

  zap trash: [
    "~/.kvirc*.rc",
    "~/Library/Preferences/com.kvirc.kvirc.plist",
    "~/Library/Saved Application State/com.kvirc.kvirc.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
