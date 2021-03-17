cask "pushplaylabs-sidekick" do
  version "88.8.43.7639,4eb7031"
  sha256 "8b7ff6cdf19d4538f158bd935d168b0e06f6080634266f22fa25930e0a71bb87"

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
