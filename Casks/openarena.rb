cask 'openarena' do
  version '0.8.8'
  sha256 '5a8faf7f5b51f351b0a1618c06b6b98a5f1a6758f1d39818de2c87df2a0bac4a'

  url 'http://openarena.ws/request.php?4'
  name 'OpenArena'
  homepage 'http://openarena.ws/smfnews.php'

  app "openarena-#{version}/OpenArena #{version} r28.app"

  postflight do
    set_permissions "#{appdir}/OpenArena.app/Contents/MacOS/openarena.ub", '755'
  end
end
