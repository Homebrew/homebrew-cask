cask "mindmanager" do
  version "25.2.105"
  sha256 "99034e012d02e6ffd0f92a08e7b351afbe1940d9f8d6a858cec4d6f7a9568d47"

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg",
      verified: "download.mindjet.com/"
  name "MindManager"
  desc "Mind mapping and visual work-management tool"
  homepage "https://www.mindmanager.com/en/"

  livecheck do
    url "https://www.mindmanager.com/mm-mac-dmg"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "MindManager.app"

  uninstall quit: "com.mindjet.mindmanager.#{version.major}"

  zap trash: [
    "~/Library/Application Support/Mindjet",
    "~/Library/Caches/com.mindjet.mindmanager.*",
    "~/Library/Preferences/com.mindjet.mindmanager.*.plist",
  ]
end
