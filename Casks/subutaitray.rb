cask 'subutaitray' do
  version '6.0.2'
  sha256 '26de83957d95ae38d2ef124a3e00462e44bf47e31f70b12a2e350bf276a465b9'

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-tray.pkg'
  appcast 'https://github.com/subutai-io/tray/releases.atom',
          checkpoint: '49db1d9212bc91293be4d38869e38c2c9f22539ae72d32b72291dec867167534'
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
