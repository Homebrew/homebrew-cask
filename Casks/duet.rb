cask "duet" do
  version "2.3.2.9"
  sha256 "7c22f0a0333d45f7a59b6686ebc647dd2ce51881211701b9ccf0a6739305b09a"

  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip",
      verified: "duet.nyc3.cdn.digitaloceanspaces.com/Mac/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://updates.duetdisplay.com/latestMac",
          must_contain: version.dots_to_hyphens
  name "Duet"
  desc "Tool for using an iPad as a second display"
  homepage "https://www.duetdisplay.com/"

  auto_updates true

  app "duet.app"

  uninstall quit: "com.kairos.duetMac",
            kext: "com.karios.driver.DuetDisplay"

  zap trash: [
    "~/Library/Preferences/com.kairos.duet*.plist",
    "~/Library/Application Support/com.kairos.duet*",
    "~/Library/Caches/com.crashlytics.data/com.kairos.duet*",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.kairos.duet*",
    "~/Library/Caches/com.kairos.duet*",
  ],
      rmdir: [
        "~/Library/Caches/com.crashlytics.data",
        "~/Library/Caches/io.fabric.sdk.mac.data",
      ]
end
