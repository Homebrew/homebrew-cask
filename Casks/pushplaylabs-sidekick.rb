cask "pushplaylabs-sidekick" do
  version "88.8.44.8934,e695e48"
  sha256 "171e461c8c8c4f99bd7c64c47bd785c463bdf88e9da95c9c800482477d16e6a3"

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
