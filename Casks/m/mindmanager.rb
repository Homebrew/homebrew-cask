cask "mindmanager" do
  version "26.0.111"
  sha256 "e87745a0890d69c67a4b34ea7e6900e3fa610431a83df7ce1f3b240ffe68e397"

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg"
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
    "~/Library/Application Support/MindManager",
    "~/Library/Caches/com.mindjet.mindmanager.*",
    "~/Library/HTTPStorages/com.mindjet.mindmanager.*.binarycookies",
    "~/Library/Preferences/ByHost/com.mindjet.mindmanager.*.plist",
    "~/Library/Preferences/com.mindjet.mindmanager.*.plist",
    "~/Library/WebKit/com.mindjet.mindmanager.*",
  ]
end
