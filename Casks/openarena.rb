cask 'openarena' do
  version '0.8.8 r28'
  sha256 '5a8faf7f5b51f351b0a1618c06b6b98a5f1a6758f1d39818de2c87df2a0bac4a'

  # download.tuxfamily.org/openarena was verified as official when first introduced to the cask
  url "http://download.tuxfamily.org/openarena/rel/#{version.major_minor_patch.no_dots}/openarena-#{version.major_minor_patch}.zip"
  name 'OpenArena'
  homepage 'http://openarena.ws/smfnews.php'

  app "openarena-#{version.major_minor_patch}/OpenArena #{version}.app"

  postflight do
    system_command '/bin/mv', args: ["#{staged_path}/openarena-#{version.major_minor_patch}/baseoa", "#{appdir}/OpenArena #{version}.app/Contents/MacOS"]
    set_permissions "#{appdir}/OpenArena #{version}.app/Contents/MacOS/openarena.ub", '755'
  end
end
