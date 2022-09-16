cask "pushplaylabs-sidekick" do
  arch arm: "arm64", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "macm1", intel: "mac"

  on_intel do
    version "104.28.1.24084,97081b7"
    sha256 "040e5faf3069de9c14143057d1ea60d6e8b5800b5966f50823e57b5c18ea910b"
  end
  on_arm do
    version "104.28.1.24086,d34f4a6"
    sha256 "fa5052ed6173572164c4d3120fb98853c2f345d06935f9db76f01e0b8ac9c275"
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
