cask 'gpodder' do
  version '3.9.0_2'
  sha256 'c5dafe2685057545cf6505d9492c429ab9c585e159c04bec62847c9ba9a40c2f'

  # downloads.sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  name 'gPodder'
  homepage 'http://gpodder.org/'
  license :gpl

  app 'gPodder.app'
end
