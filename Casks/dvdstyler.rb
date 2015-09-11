cask :v1 => 'dvdstyler' do
  version '2.9.2'
  sha256 '49d8f733a640b27fc07ce978dd57d8f3264f554e536ed6a9bc5a8bee4ea6a899'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  name 'DVDStyler'
  homepage 'http://dvdstyler.org'
  license :gpl

  app 'DVDStyler.app'
end
