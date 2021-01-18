cask "pushplaylabs-sidekick" do
  version "87.7.41.6489,4565e3e"
  sha256 "6e96f2e156210c699bb3c7035a7f04045aebe1db5955595daf2848e2b3c7dd57"

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
