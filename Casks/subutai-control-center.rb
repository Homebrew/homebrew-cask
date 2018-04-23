cask 'subutai-control-center' do
  version '6.9.2'
  sha256 'a766fe8d765f571302a8ecc71c66c596c2d17e50ede07310f0eb2e58186e3e1a'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-control-center.pkg'
  appcast 'https://github.com/subutai-io/control-center/releases.atom',
          checkpoint: 'f730e1aafcfba07def5f1284f3741039e4e94317d62d7622707babfb0e17c1ce'
  name 'Subutai Tray'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-control-center.pkg'

  # This is a hack to force the file extension.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('get'), staged_path.join('subutai-control-center.pkg')]
  end

  uninstall pkgutil: 'com.Subutai.Control.Center'
end
