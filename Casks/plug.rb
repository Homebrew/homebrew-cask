cask 'plug' do
  version :latest
  sha256 :no_check

  url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  appcast 'https://www.plugformac.com/updates/plug2/sparklecast.xml',
          :sha256 => '8fadae02277ffed6b487550fd8e45690289cc228e2f3c9b1667ceb34fa559610'
  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
