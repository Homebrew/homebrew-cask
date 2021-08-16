cask "snipaste" do
  version "2.6.6-Beta2"
  sha256 "8582b045b340cc328d9fab9aa37699f6bb7312a38c7b2847668478fc6fead913"

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
