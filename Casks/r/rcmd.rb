cask "rcmd" do
  version "3.3.3"
  sha256 "7294c5239243de16d74d7b187975b442fff3248ab929fe53cc7511e1086ef4ac"

  url "https://files.lowtechguys.com/releases/rcmd-#{version}.dmg"
  name "rcmd"
  desc "App switcher driven by the Right Command key"
  homepage "https://lowtechguys.com/rcmd/"

  livecheck do
    url "https://files.lowtechguys.com/rcmd/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "rcmd.app"

  zap trash: [
    "~/.config/rcmd",
    "~/.local/bin/rcmd",
    "~/Library/Application Scripts/com.lowtechguys.rcmd",
    "~/Library/Application Support/rcmd",
    "~/Library/Caches/com.lowtechguys.rcmd",
    "~/Library/HTTPStorages/com.lowtechguys.rcmd",
    "~/Library/HTTPStorages/com.lowtechguys.rcmd.binarycookies",
    "~/Library/Preferences/com.lowtechguys.rcmd.plist",
    "~/Library/WebKit/com.lowtechguys.rcmd",
  ]
end
