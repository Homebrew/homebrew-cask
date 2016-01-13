cask 'plug' do
  version :latest
  sha256 :no_check

  url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  appcast 'https://www.plugformac.com/updates/plug2/sparklecast.xml',
          :sha256 => '232f368f520032e3ac9bc25c85f507762ae1826209a6ef90a02638b85458278e'
  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
