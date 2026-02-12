cask "commander" do
  version "0.6.599"
  sha256 "3e3ffbd095daaf0e7a3f2d5fdb7b338de4509981d4882905068baeed93463f33"

  url "https://download.commanderai.app/release/Commander-#{version}.zip"
  name "Commander"
  desc "AI agent operator"
  homepage "https://commanderai.app/"

  # Upstream typically creates several releases per day and there isn't always
  # a release for every version increase. This manually throttles versions to
  # one in every five versions (not releases), aiming for roughly one update per
  # day. This may need to be adjusted if the release cadence changes.
  livecheck do
    url "https://softwareupdate.commanderai.app/appcast/commanderai-appcast.xml"
    strategy :sparkle do |items|
      versions = items.filter_map do |item|
        short_version = item.short_version
        next unless short_version

        Version.new(short_version)
      end.uniq.sort

      throttled_patch = nil
      versions.map do |short_version|
        patch = short_version.patch.to_i
        cur_throttled_patch = patch - (patch % 5)
        next if cur_throttled_patch == throttled_patch

        throttled_patch = cur_throttled_patch
        short_version
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Commander.app"

  zap trash: [
    "~/Library/Application Support/Commander",
    "~/Library/Caches/Commander",
    "~/Library/Commander",
    "~/Library/Preferences/com.krzyzanowskim.Commander.plist",
  ]
end
