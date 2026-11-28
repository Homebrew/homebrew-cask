cask "openshot-video-editor@daily" do
  version "4.3.0,19603-7faf26ee-b6be1323,release-candidate"
  sha256 "e8f1e6ba8d19a581fde09e4b998195b4633dff1728cb4c625022d13c5a428a8e"

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
