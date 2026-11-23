cask "openshot-video-editor@daily" do
  version "4.2.0,19341-c23ef4ad-7504624e,dev1-daily"
  sha256 "8cf15ae730326bea0a2ba2978c200df966e9552e0e6ae577b97bda6746dd5ed2"

  channel = version.csv.third || "daily"
  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-#{channel}-#{version.csv.second}-x86_64.dmg"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://www.openshot.org/download/"
    regex(/
      href=.*?OpenShot[._-]v?(\d+(?:\.\d+)+)
      [._-]((?:dev1-)?daily|release-candidate)[._-](.*)[._-]x86[._-]64\.dmg["' >]
    /ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        parts = match.values_at(0, 2)
        parts << match[1] if match[1] != "daily"
        parts.join(",")
      end
    end
  end

  conflicts_with cask: "openshot-video-editor"
  depends_on :macos

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
