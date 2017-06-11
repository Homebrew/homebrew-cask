cask 'rawtherapee' do
  version '5.1'
  sha256 '0490769c37dd8b70a6aa35f51b36e2acbdd7b9f4f4b3707a967abf8ad0edcd5f'

  url "http://www.rawtherapee.com/shared/builds/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  name 'RawTherapee'
  homepage 'http://rawtherapee.com/'

  depends_on macos: '>= 10.9'
  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
