cask 'plug' do
  if MacOS.release <= :lion
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url 'http://plugformac.com/files/Plug-#{version}.dmg'
  else
    version :latest
    sha256 :no_check
    appcast 'https://www.plugformac.com/updates/plug2/sparklecast.xml',
            checkpoint: '7092bd0eb0a14a478018d36a44addfa4a8dfc871e214f79d66b6a5e1ce216815'
    url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
