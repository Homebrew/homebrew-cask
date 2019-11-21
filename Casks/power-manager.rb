cask 'power-manager' do
  version '5.4.0'
  sha256 'a49ffbc4ca635116884f6cabd42df60c1bdfbabc5ef40290459d3770aaa17820'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
