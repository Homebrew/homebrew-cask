cask "openshot-video-editor@daily" do
  version "3.4.0,15135-149456d1-a76e176a"
  sha256 "2921d6ad8ef86c63b4d4a3eb0303a833c7ffa27d78674e1deba0779fb1bc6b7e"

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
