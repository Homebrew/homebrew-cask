cask "spaceradar" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "6.0.1"
    sha256 "656be7d20363297ae542c27e1317edab4034cf5f3515658c0e083c8dd40b9c63"

    url "https://github.com/zz85/space-radar/releases/download/v#{version}/stable-macos-#{arch}-SpaceRadar.dmg"

    depends_on macos: ">= :sonoma"

    app "Space Radar.app"
  end
  on_intel do
    version "6.0.0"
    sha256 "2ecc3b510ff214b25bc3791ea84b4192b0b3839d03e69ae716aaecdcc4d40eda"

    url "https://github.com/zz85/space-radar/releases/download/v#{version}/SpaceRadar-#{version}-mac-#{arch}.zip"

    depends_on macos: ">= :monterey"

    app "SpaceRadar.app"
  end

  name "SpaceRadar"
  desc "Disk space and memory visualiser"
  homepage "https://github.com/zz85/space-radar"

  # Not ever release contains a version for both architectures, so we check the releases page for all assets.
  # The assets path also can differ, so we need to check for two variants.
  livecheck do
      url :url
      regex(/^(?:
            SpaceRadar[._-]v?(?:\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.zip|
            stable[._-]macos[._-]#{arch}[._-]SpaceRadar\.dmg
          )$/ix)
      strategy :github_releases do |json, regex|
        json.map do |release|
          next if release["draft"] || release["prerelease"]

          release["assets"]&.map do |asset|
            match = asset["name"]&.match(regex)
            next if match.blank?

            release["tag_name"]&.tr("v", "")
          end
        end.flatten
      end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  uninstall quit: "com.electron.spaceradar"

  zap trash: [
    "~/Library/Application Support/space-radar",
    "~/Library/Caches/space-radar",
    "~/Library/Preferences/com.electron.spaceradar.plist",
    "~/Library/Saved Application State/com.electron.spaceradar.savedState",
  ]
end
