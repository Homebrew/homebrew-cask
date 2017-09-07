cask 'rawtherapee' do
  version '5.2'
  sha256 '12cddd1ea1e827b17bc81f23381641e6788902f3403c054dec99ab0d451a7abe'

  url "http://www.rawtherapee.com/shared/builds/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  name 'RawTherapee'
  homepage 'http://rawtherapee.com/'

  depends_on macos: '>= 10.9'
  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
