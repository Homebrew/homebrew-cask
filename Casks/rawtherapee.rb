cask 'rawtherapee' do
  version '5.3'
  sha256 '5428d5a1f222ce948894df2cddc6359790fe48e7fc1bd39c23d08a557b8d40a7'

  url "http://www.rawtherapee.com/shared/builds/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  name 'RawTherapee'
  homepage 'http://rawtherapee.com/'

  depends_on macos: '>= 10.9'
  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
