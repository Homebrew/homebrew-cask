cask 'golly' do
  version '3.3'
  sha256 '3641940d1bd102573a546320c814e847f8fe4f0e6602ab055362d0b85d1e7cd9'

  # downloads.sourceforge.net/golly/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/golly/rss?path=/golly'
  name 'Golly'
  homepage 'https://golly.sourceforge.io/'

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
