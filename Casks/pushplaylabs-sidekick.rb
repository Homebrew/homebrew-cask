cask "pushplaylabs-sidekick" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "macm1"

  if Hardware::CPU.intel?
    version "100.24.5.21203,58b6910"
    sha256 "772fb62dcb80de00bb8686e46950188a29a7f46192e86956e5b2b4e4040ce26a"
  else
    version "100.24.5.21205,209ac3c"
    sha256 "279673a52081768db7355435f34117a466a7dc00e8dc7533aed0176267dfc5aa"
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
