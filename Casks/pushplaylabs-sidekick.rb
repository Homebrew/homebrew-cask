cask "pushplaylabs-sidekick" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "macm1"

  if Hardware::CPU.intel?
    version "100.23.2.20292,4508784"
    sha256 "94a52f49e066e8e67cc157bd0649e504a32c5e2580683bfb992b9b52830e9d8f"
  else
    version "100.23.2.20294,1b0252c"
    sha256 "bd3de69a3d9e610065410fa3bc8470eccc8a65799db76b99118482b384155bb8"
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
