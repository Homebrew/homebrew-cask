cask 'goldencheetah' do
  version '3.3.0'
  sha256 'a32d917ead989fe491b1083f45efe758dcddaa912a7630904090c8c562f241e3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version.to_f}/GoldenCheetah_#{version}_QT5_64bit.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom',
          checkpoint: '5207cf9305b817784235c4b12a81a77d6e22a23d096cb878fc409771b259339a'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'
  license :gpl

  app 'GoldenCheetah.app'
end
