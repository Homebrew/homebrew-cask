cask "pushplaylabs-sidekick" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "macm1"

  if Hardware::CPU.intel?
    version "100.24.4.20852,8b362d0"
    sha256 "8d1bb8f94c3ac3be6bf5e93fa4a6287a91e5fa39d472f4bac4bceee6a240fdeb"
  else
    version "100.24.4.20854,be44cdd"
    sha256 "f154d7ec098220fa4660d25c8b90f9886037b127c655d772c5b6283e0699f52a"
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
