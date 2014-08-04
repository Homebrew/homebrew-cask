class Rubitrack < Cask
  version '3.4.4'
  sha256 'f1ac426726b93ae144afd6809e2acc00b139cb64d4a89da7677795d7c11cffc4'

  url "http://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast 'http://www.rubitrack.com/autoupdate/sparkle3.xml'
  homepage 'http://www.rubitrack.com/'

  link "rubiTrack #{version.to_i}.app"
end
