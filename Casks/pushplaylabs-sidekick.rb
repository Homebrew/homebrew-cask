cask "pushplaylabs-sidekick" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "macm1"

  if Hardware::CPU.intel?
    version "96.16.1.17878,9ea5ea3"
    sha256 "db6ccddd4f184cd809ae359ead926e4d0eae0a11a726090fd1780f622daecc3b"
  else
    version "96.16.1.17880,96f997e"
    sha256 "45d7e1489e06c0b18cd044cefcefd47fe2969477abd25f0b9e15969bf9b51489"
  end

  url "https://fast-cdn.meetsidekick.com/builds/sidekick-mac-release-#{arch}-#{version.csv.first}-#{version.csv.second}-default.dmg"
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
