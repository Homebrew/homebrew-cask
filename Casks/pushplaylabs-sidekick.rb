cask "pushplaylabs-sidekick" do
  version "87.7.36.5896,f688d8d"
  sha256 "de954d9c41ec74c87375af0a519fe1ac8d3dcde6ee0a5c2f09df7043ca0d63c7"

  url "https://cdn.meetsidekick.com/builds/sidekick-mac-release-x64-#{version.before_comma}-#{version.after_comma}-df.dmg"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  livecheck do
    url "https://api.meetsidekick.com/downloads/df/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(/-(\d+(?:\.\d+)*)-(.*?)-df.dmg/)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Sidekick.app"

  zap trash: [
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
