cask "openshot-video-editor@daily" do
  version "4.0.1,17164-983c847c-b4b8cc77"
  sha256 "70c8f96c789f15dfca2e4771b5011dd60a4a5d2a5b46c3c19ee6df0ac3002a29"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-#{version.csv.third || "daily"}-#{version.csv.second}-x86_64.dmg"
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
  depends_on :macos

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
