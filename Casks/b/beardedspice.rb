cask "beardedspice" do
  version "2.2.3"
  sha256 "3867314a5d6d8a6da40d2a0bcb11279067885acb41e3e811d8f547219c150b26"

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  name "BeardedSpice"
  desc "Control web-based media players with media keys"
  homepage "https://github.com/beardedspice/beardedspice/"

  deprecate! date: "2024-07-09", because: :unmaintained

  auto_updates true

  app "BeardedSpice.app"

  zap trash: [
    "~/Library/Caches/com.beardedspice.BeardedSpice",
    "~/Library/Preferences/com.beardedspice.BeardedSpice.plist",
  ]

  caveats do
    requires_rosetta
  end
end
