cask 'gpodder' do
  version '3.8.5_0'
  sha256 '20e2ae8d5b703fa5b6e68495a33daed0a894efe408ef7f72b7f265e21718d7b9'

  # downloads.sourceforge.net/sourceforge/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/gpodder/gPodder-#{version}.zip"
  name 'gPodder'
  homepage 'http://gpodder.org/'
  license :gpl

  app 'gPodder.app'
end
