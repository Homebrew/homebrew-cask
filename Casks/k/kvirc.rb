cask "kvirc" do
  version "5.2.10,Quasar"
  sha256 "c439697be84fb8dc41b9541f64182bb6ee561ecfd3e5070f1f4be64ca0fe156c"

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

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "KVIrc.app"

  zap trash: [
    "~/.kvirc*.rc",
    "~/Library/Preferences/com.kvirc.kvirc.plist",
    "~/Library/Saved Application State/com.kvirc.kvirc.savedState",
  ]
end
