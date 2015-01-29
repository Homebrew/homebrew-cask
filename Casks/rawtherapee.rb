cask :v1 => 'rawtherapee' do
  version '4.2.21'
  sha256 '4daddff5fbb6cc8c3cca80dd1c25bf2adb42ff8068e6d79db040690113a22539'

  url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  homepage 'http://rawtherapee.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => "RawTherapee_OSX_10.6_64_#{version}.dmg"
  app 'RawTherapee.app'
end
