cask 'freac' do
  version '20170317'
  sha256 '5651c5ed5fbd96a7c44b3f116e7e8ceceda9772daf592b30b720d0c5d91b95af'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: 'ab72691a5e1ddc009262196cd28963e420b01caab9fe45f62056df50fb4c5425'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
