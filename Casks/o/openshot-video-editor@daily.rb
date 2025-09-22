cask "openshot-video-editor@daily" do
  version "3.4.0,14688-c165eca5-0b018e34,release-candidate"
  sha256 "6d12db9ded448b2d5349835388810e09b27736109305aa37d4f62bdf6c8362bc"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-#{version.csv.third || "daily"}-#{version.csv.second}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://www.openshot.org/download/"
    regex(/
      href=.*?OpenShot[._-]v?(\d+(?:\.\d+)+)
      [._-]((?:dev-)?daily|release-candidate)[._-](.*)[._-]x86[._-]64\.dmg["' >]
    /ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        (match[1] == "daily") ? "#{match[0]},#{match[2]}" : "#{match[0]},#{match[2]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: "openshot-video-editor"

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
