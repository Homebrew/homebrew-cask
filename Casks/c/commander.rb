cask "commander" do
  version "0.7.958"
  sha256 "dc51db61f77cd5fc99e0715eb98f5e9ddeeeb34849739b398e6e2c51897b4bbc"

  url "https://download.thecommander.app/release/Commander-#{version}.zip"
  name "Commander"
  desc "AI agent operator"
  homepage "https://thecommander.app/"

  # Upstream typically creates several releases per day and there isn't always
  # a release for every version increase. This manually throttles versions to
  # one in every five versions (not releases), aiming for roughly one update per
  # day. This may need to be adjusted if the release cadence changes.
  livecheck do
    url "https://softwareupdate.thecommander.app/appcast/commanderai-appcast.xml"
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
