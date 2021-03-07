cask "rubitrack-pro" do
  version "5.3.6,3230"
  sha256 "7413962215f21fcffec7f62bcaf9abe429c1b0c51cc64d02debf8592e1e89665"

  url "https://www.rubitrack.com/files/rubiTrack-#{version.before_comma}.dmg"
  name "rubiTrack"
  homepage "https://www.rubitrack.com/"

  livecheck do
    url "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "rubiTrack #{version.major} Pro.app"
end
