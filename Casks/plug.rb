cask 'plug' do
  version :latest
  sha256 :no_check

  url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  appcast 'https://www.plugformac.com/updates/plug2/sparklecast.xml',
          :checkpoint => 'd2a69b4209eac9d130dc8df70bb97dd2457df2b851eddc9349550ba7d7e784b9'
  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
