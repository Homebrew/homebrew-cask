cask "openshot-video-editor@daily" do
  version "3.2.1,12662-044bb224-23713d3a"
  sha256 "638a137014c40062fe533c216102798d41859e41a8c931c706065eef727eef49"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-daily-#{version.csv.second}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://www.openshot.org/download/"
    regex(/OpenShot[._-]v?(\d+(?:\.\d+)+)[._-]daily[._-](.*)[._-]x86[._-]64\.dmg"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "openshot-video-editor"
  depends_on macos: ">= :catalina"

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]

  caveats do
    requires_rosetta
  end
end
