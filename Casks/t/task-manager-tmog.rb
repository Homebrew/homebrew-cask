cask "task-manager-tmog" do
  version "1.1.0,20261026015153"
  sha256 "e233c033514c703f19fafa394f99f2679e89ed88f1b74fc9f03574dc6b1bea64"

  url "https://tmog.org/downloads/TMOG-Task-Manager-#{version.csv.first}-#{version.csv.second}-macOS-universal.dmg"
  name "Task Manager TMOG"
  desc "System monitor that identifies resource-heavy processes"
  homepage "https://tmog.org/"

  livecheck do
    url "https://tmog.org/downloads/release.json"
    strategy :json do |json|
      "#{json["version"]},#{json["build"]}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Task Manager TMOG.app"

  zap trash: [
    "~/Library/Application Support/TMOG",
    "~/Library/Preferences/com.tmog.taskmanager.plist",
  ]
end
