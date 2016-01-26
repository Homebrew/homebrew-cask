cask 'moreamp' do
  version '0.1.29'
  sha256 '770dad0b69979f51807dee3f873e0ebbb755f9f2f2f60c734ac55094e6a6f707'

  url "http://downloads.sourceforge.net/project/moreamp/moreamp/MoreAmp-#{version}/MoreAmp-#{version}-binOSX104intel.dmg"
  name 'MoreAmp'
  homepage 'http://sourceforge.net/projects/moreamp/'
  license :gpl

  app 'MoreAmp.app'
end
