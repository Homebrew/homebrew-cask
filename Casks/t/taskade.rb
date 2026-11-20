cask "taskade" do
  version "4.7.3"
  sha256 "fb0d38802ab42bc54c8ac4e7746f3cc8ebbe0208dba9d36bfcefed744f3ee102"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Taskade[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
  end

  depends_on macos: :ventura

  app "Taskade.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.taskade.sfl*",
    "~/Library/Application Support/taskade",
    "~/Library/Preferences/com.taskade.plist",
    "~/Library/Saved Application State/com.taskade.savedState",
  ]
end
