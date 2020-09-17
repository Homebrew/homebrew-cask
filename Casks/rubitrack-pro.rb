cask "rubitrack-pro" do
  version "5.3.3"
  sha256 "77f7fa4d251ea48eaa5d59792ac56b76f3fa822ee67172103fd2112a0edea714"

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name "rubiTrack"
  homepage "https://www.rubitrack.com/"

  depends_on macos: ">= :sierra"

  app "rubiTrack #{version.major} Pro.app"
end
