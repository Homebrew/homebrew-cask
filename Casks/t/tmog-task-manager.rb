cask "tmog-task-manager" do
  version "0.1.4,20260916001402"
  sha256 "b89aa98f75303dd5a21cdf1be491ccfc956c650051d1c2bb3e6882eaf6e08d57"

  url "https://tmog.org/downloads/TMOG-Task-Manager-#{version.csv.first}-#{version.csv.second}-macOS-universal.dmg"
  name "Task Manager TMOG"
  desc "System monitor that identifies resource-heavy processes"
  homepage "https://tmog.org/"

  livecheck do
    url "https://tmog.org/downloads/release.json"
    strategy :json do |release|
      "#{release["version"]},#{release["build"]}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Task Manager TMOG.app"

  zap trash: "~/Library/Preferences/com.tmog.taskmanager.plist"
end
