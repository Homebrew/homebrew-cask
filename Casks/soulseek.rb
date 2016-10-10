cask 'soulseek' do
  version '2016-4-24'
  sha256 '82cbee7947e5d87db00ae38df5fb65d053a3cd7e4fdc61ca3a1508437a9673ce'

  # dropbox.com/s/fxx07um9kpffltj was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/fxx07um9kpffltj/SoulseekQt-#{version}.dmg?dl=1"
  name 'Soulseek'
  homepage 'http://www.soulseekqt.net/'

  app 'SoulseekQt.app'
end
