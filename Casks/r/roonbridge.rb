cask "roonbridge" do
  version "2.71,207101683"
  sha256 "fb851d194ff583cca6027b4fde918495d4dc86e20c3158ed2f61577f9e98fac9"

  url "https://download.roonlabs.net/updates/production/RoonBridge_#{version.csv.second}.dmg"
  name "Roon Bridge"
  desc "Music player network extender"
  homepage "https://roon.app/"

  livecheck do
    # The update server returns no builds when `osversion` is omitted
    url "https://updates.roonlabs.net/update/?v=2&platform=macosx&version=&product=RoonBridge&branding=roon&branch=production&curbranch=production&osversion=27.0"
    regex(/machineversion=(\d+).*?displayversion=v?(\d+(?:\.\d+)+)/im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: :monterey

  app "RoonBridge.app"

  zap trash: "~/Library/RoonBridge"
end
