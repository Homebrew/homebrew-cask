cask "pushplaylabs-sidekick" do
  version "87.7.36.5759-3cb1b0e-df"
  sha256 "0db4e8414ba3d3e86768c23625fa691ab6105383d7844e8c50f33a66a222fbe9"

  url "https://cdn.meetsidekick.com/builds/sidekick-mac-release-x64-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.meetsidekick.com/downloads/df/mac"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  app "Sidekick.app"

  zap trash: [
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
