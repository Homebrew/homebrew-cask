cask "pushplaylabs-sidekick" do
  arch arm: "arm64", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "macm1", intel: "mac"

  on_arm do
    version "118.56.1.37229,b001c14"
    sha256 "1b6cd2400752712598a5ce26db54b1f27030a643d12df6a626088a63e3e13725"
  end
  on_intel do
    version "118.56.1.37230,c8094de"
    sha256 "8b2a472f48eb355070d164f31ef51b1f299dd76301f8399e0bdfac0d35313b21"
  end

  url "https://cdn.meetsidekick.com/browser-builds/sidekick-mac-release-#{arch}-#{version.csv.first}-#{version.csv.second}-df.dmg"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  livecheck do
    url "https://api.meetsidekick.com/downloads/df/#{livecheck_folder}"
    regex(/[_-](\d+(?:\.\d+)+)[_-](.+)[._-](?:default|df)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Sidekick.app"

  zap trash: [
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
