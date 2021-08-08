cask "pushplaylabs-sidekick" do
  if Hardware::CPU.intel?
    version "90.10.12.11869,f155088"
    sha256 "fd9fddd676c3d1a0f71eae54d78804587cfbf54c577eb14e45c9d2440e54e5bd"

    url "https://sidekick-cdn-production.meetsidekick.com/builds/sidekick-mac-release-x64-#{version.before_comma}-#{version.after_comma}-df.dmg"

    livecheck do
      url "https://api.meetsidekick.com/downloads/df/mac"
      strategy :header_match do |headers|
        match = headers["location"].match(/[_-](\d+(?:\.\d+)+)[_-](\h+)[._-]df\.dmg/i)
        "#{match[1]},#{match[2]}"
      end
    end
  else
    version "90.9.1.10107,be53cbe"
    sha256 "911891036bcd90371b452e45edd6316d400e7901df41a14571b478e9eea9b8b6"

    url "https://sidekick-cdn-production.meetsidekick.com/builds/sidekick-mac-release-universal-#{version.before_comma}-#{version.after_comma}-df.dmg"

    livecheck do
      url "https://api.meetsidekick.com/downloads/macm1"
      strategy :header_match do |headers|
        match = headers["location"].match(/[_-](\d+(?:\.\d+)+)[_-](\h+)[._-]df\.dmg/i)
        "#{match[1]},#{match[2]}"
      end
    end
  end

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
