cask "roonbridge" do
  version "1.8,100801125"
  sha256 "003dcaf79a3ae4bc06f62e5edd35bb40ccf32b05df28bf59182eacb9ac35ba28"

  url "https://download.roonlabs.net/updates/stable/RoonBridge_#{version.csv.second}.dmg",
      verified: "download.roonlabs.net/updates/"
  name "Roon Bridge"
  desc "Music player network extender"
  homepage "https://roon.app/"

  livecheck do
    url "https://updates.roonlabs.net/update/?v=2&platform=macosx&version=&product=RoonBridge&branding=roon&branch=production&curbranch=production"
    regex(/machineversion=(\d+).*?displayversion=v?(\d+(?:\.\d+)+)/im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "RoonBridge.app"

  zap trash: "~/Library/RoonBridge"

  caveats do
    requires_rosetta
  end
end
