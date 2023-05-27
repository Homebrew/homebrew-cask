cask "pushplaylabs-sidekick" do
  arch arm: "arm64", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "macm1", intel: "mac"

  on_arm do
    version "112.45.1.33306,a499eb8"
    sha256 "a42e9b9f754728fae3bbca3c2ace931d7f3c9c5cfa05bee7b75157ddf7f5e9e1"
  end
  on_intel do
    version "112.45.1.33307,29b1ece"
    sha256 "d7fc0361f9331d1635e8ad9e7cf665adcc61eafbfc5aa4cc6c68f00b7223dd91"
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
