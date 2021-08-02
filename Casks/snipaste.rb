cask "snipaste" do
  version "2.6.4-Beta"
  sha256 "2a5658520d1826ca2fb9b1b62ff1955874f836ac983e64165d682eb3bc99d950"

  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg",
      verified: "bitbucket.org/liule/snipaste/"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://www.snipaste.com/all_versions"
    regex(/"mac_version"\s*:\s*"v?(.*?)"/i)
  end

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: "~/Library/Preferences/com.Snipaste.plist"
end
