cask "shortcutor" do
  version "2020.4.1"
  sha256 "ce432c3904c41bdcc67f8b0a27d8d28b958a7669704d6670ff5911f0b72339e0"

  url "https://cdn.shortcutor.com/download/darwin/Shortcutor-#{version}.dmg"
  name "Shortcutor"
  desc "iOS shortcuts editor"
  homepage "https://shortcutor.com/"

  livecheck do
    url "https://shortcutor.com/getfile.html"
    strategy :page_match
    regex(/Shortcutor-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Shortcutor.app"

  uninstall quit: "Shortcutor"

  zap trash: [
    "~/Library/Application Support/Shortcutor",
    "~/Library/Logs/Shortcutor",
    "~/Library/Preferences/com.shortcutor.shortcutor.plist",
  ]
end
