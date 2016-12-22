cask 'openarena' do
  version '0.8.8 r28'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "http://download.tuxfamily.org/openarena/rel/#{version.major_minor_patch.no_dots}/openarena-#{version.major_minor_patch}.zip"
  name 'OpenArena'
  homepage 'http://openarena.ws/smfnews.php'

  app "openarena-#{version.major_minor_patch}/OpenArena #{version}.app"

  postflight do
    system_command '/bin/mv', args: ["#{staged_path}/openarena-#{version.major_minor_patch}/baseoa", "#{appdir}/OpenArena #{version}.app/Contents/MacOS"]
    set_permissions "#{appdir}/OpenArena #{version}.app/Contents/MacOS/openarena.ub", '755'
  end
end
