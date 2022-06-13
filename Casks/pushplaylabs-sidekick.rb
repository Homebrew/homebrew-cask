cask "pushplaylabs-sidekick" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "macm1"

  if Hardware::CPU.intel?
    version "100.23.5.20396,68f8fd2"
    sha256 "b0ca2122bb28b86c0e03aaf1e6361c107029ca2eb4d186c9855437ba0f549313"
  else
    version "100.23.5.20398,942ef55"
    sha256 "9f4e39db9a77bd160b34e5d35cf255f37e476b355ca077ccface0bc2c7de5dfc"
  end

  url "https://fast-cdn.meetsidekick.com/builds/sidekick-mac-release-#{arch}-#{version.csv.first}-#{version.csv.second}-df.dmg"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  livecheck do
    url "https://api.meetsidekick.com/downloads/df/#{livecheck_folder}"
    strategy :header_match do |headers|
      match = headers["location"].match(/[_-](\d+(?:\.\d+)+)[_-](.+)[._-](?:default|df)\.dmg/i)
      next if match.blank?

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
