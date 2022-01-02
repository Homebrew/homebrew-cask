cask "direqual" do
  version "4.0"
  sha256 :no_check

  url "https://naarakstudio.com/download/DirEqual.dmg"
  name "DirEqual"
  desc "Advanced directory compare utility"
  homepage "https://naarakstudio.com/direqual/"

  app "DirEqual.app"

  zap trash: [
    "~/Library/Caches/com.naarak.DirEqual",
    "~/Library/Containers/com.naarak.DirEqual",
    "~/Library/Application Scripts/com.naarak.DirEqual",
    "~/Library/Preferences/com.naarak.DirEqual.plist",
    "~/Library/WebKit/com.naarak.DirEqual",
  ]
end
