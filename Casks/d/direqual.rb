cask "direqual" do
  version "5.7.5,57502"
  sha256 :no_check

  url "https://naarakstudio.com/download/DirEqual.dmg"
  name "DirEqual"
  desc "Advanced directory compare utility"
  homepage "https://naarakstudio.com/direqual/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "DirEqual.app"

  zap trash: [
    "~/Library/Application Scripts/com.naarak.DirEqual",
    "~/Library/Caches/com.naarak.DirEqual",
    "~/Library/Containers/com.naarak.DirEqual",
    "~/Library/Preferences/com.naarak.DirEqual.plist",
    "~/Library/WebKit/com.naarak.DirEqual",
  ]
end
