cask "rcmd" do
  version "3.8.5"
  sha256 "7951b0cbf804bbd3946f5694dede5d82d57ea34ed93d66d3adf89ea44a0acac2"

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
