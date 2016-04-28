cask 'gpodder' do
  version '3.9.0_0'
  sha256 'c8bbf5175b43d8def73f46c5d0d23950d12a524d686fdb9b8fe5d5a910dd6378'

  # downloads.sourceforge.net/sourceforge/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/gpodder/gPodder-#{version}.zip"
  name 'gPodder'
  homepage 'http://gpodder.org/'
  license :gpl

  app 'gPodder.app'
end
