cask 'subutaicontrolcenter' do
  version '7.0.0'
  sha256 'c3eb5e3c0e97b3db14f8f5a609ac22ebde92335ef4568cb83c6a978e8eb82ccc'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-control-center.pkg'
  appcast 'https://github.com/subutai-io/control-center/releases.atom',
          checkpoint: '3826ac214986bc1353a310d84745a455c2cf54eb5e9a596150fb9fb73a777b9f'
  name 'Subutai Control Center'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-control-center.pkg'

  # This is a hack to force the file extension.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('get'), staged_path.join('subutai-control-center.pkg')]
  end

  uninstall pkgutil: 'com.Subutai.Control.Center',
            delete:  '/Applications/SubutaiControlCenter.app'
end
