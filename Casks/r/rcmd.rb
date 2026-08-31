cask "rcmd" do
  version "3.5.5"
  sha256 "bfb8ed4384ce7077081d4fe93e1c339fde52bdd12e3a2cf69a3b1273b17ffb8c"

  url "https://files.lowtechguys.com/releases/rcmd-#{version}.dmg"
  name "rcmd"
  desc "App switcher driven by the Right Command key"
  homepage "https://lowtechguys.com/rcmd/"

  livecheck do
    url "https://files.lowtechguys.com/rcmd/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "rcmd.app"
  binary "#{appdir}/rcmd.app/Contents/SharedSupport/rcmdCLI", target: "rcmd"

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
