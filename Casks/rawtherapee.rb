cask 'rawtherapee' do
  version '5.4'
  sha256 'a3f88a3d65332a013c45b01a0f88c37191a6fda8045a6d03d07c54e3438e6315'

  url "http://www.rawtherapee.com/shared/builds/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  name 'RawTherapee'
  homepage 'http://rawtherapee.com/'

  depends_on macos: '>= :mavericks'
  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
