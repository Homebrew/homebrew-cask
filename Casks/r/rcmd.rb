cask "rcmd" do
  version "3.5.2"
  sha256 "fff34dbe1e2c4f6197dc970338e7386b743b1cde21d7887c257b06a240aaef9d"

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
