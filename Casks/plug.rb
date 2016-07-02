cask 'plug' do
  if MacOS.release <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "http://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.11'
    sha256 'a7a5add9f4b56ed539ccfd370e0b95cfb81d6fe64cfbbdebb8b8e39c10571192'
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml",
            checkpoint: '7092bd0eb0a14a478018d36a44addfa4a8dfc871e214f79d66b6a5e1ce216815'
    url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
