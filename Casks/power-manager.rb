cask 'power-manager' do
  version '5.2.0'
  sha256 '85946833c57e4e38509649b2cbfb345ae08f8b5ae9315b791f52a1c4689b323e'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true

  app 'Power Manager.app'
end
