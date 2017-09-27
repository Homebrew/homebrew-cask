cask 'subutaitray' do
  version :latest
  sha256 :no_check

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-tray.pkg'
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
