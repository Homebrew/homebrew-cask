cask "pushplaylabs-sidekick" do
  version "87.7.36.5858-5b8f7ee-df"
  sha256 "0680b01e5f1c6312d061475029f1603f825ccafa1f1bcc7d2293d25946eaca1a"

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
