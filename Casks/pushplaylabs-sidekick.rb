cask "pushplaylabs-sidekick" do
  arch arm: "arm64", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "macm1", intel: "mac"

  on_arm do
    version "108.39.5.31081,1b93739"
    sha256 "dd7dc201265934f2f24d5292ceb34da1608f092fe7308ca2d47a2aaf7fc2b5b0"
  end
  on_intel do
    version "108.39.1.30920,b8f9c04"
    sha256 "fae80fbe5ea5bca47d47711d84af86ec425aaca993f507ffc9631d2f2577d426"
  end

  url "https://cdn.meetsidekick.com/browser-builds/sidekick-mac-release-#{arch}-#{version.csv.first}-#{version.csv.second}-df.dmg"
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
