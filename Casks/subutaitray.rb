cask 'subutaitray' do
  version '6.1.0'
  sha256 'a8e0cbccb6b51c581177f22cbd7495586eb1e497314a03d70b50b42aa9ab610c'

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-tray.pkg'
  appcast 'https://github.com/subutai-io/tray/releases.atom',
          checkpoint: '84cb922f3ad342a24315de5ebeaa80503b18499aacaf436b6d34e39907de95d7'
  name 'Subutai Tray'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-tray.pkg'

  # This is a hack to force the file extension.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('get'), staged_path.join('subutai-tray.pkg')]
  end

  uninstall pkgutil: 'com.Subutai.Tray'
end
