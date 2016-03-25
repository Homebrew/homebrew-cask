cask 'goldencheetah' do
  version '3.3.0'
  sha256 'a32d917ead989fe491b1083f45efe758dcddaa912a7630904090c8c562f241e3'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version.to_f}/GoldenCheetah_#{version}_QT5_64bit.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom',
          checkpoint: 'a4226cfbc097a916290ed1e22f1a8a2c5e03afe7e6ba59f850e0b83620684c89'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'
  license :gpl

  app 'GoldenCheetah.app'
end
