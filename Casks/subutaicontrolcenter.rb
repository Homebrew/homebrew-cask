cask 'subutaicontrolcenter' do
  version '7.1.0'
  sha256 '8a3846795928419bdac260e43dbb849aab746947c9aae28eec100a7b6e3d8ab6'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-control-center.pkg'
  appcast 'https://github.com/subutai-io/control-center/releases.atom'
  name 'Subutai Control Center'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-control-center.pkg'

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('get'), staged_path.join('subutai-control-center.pkg')]
  end

  uninstall pkgutil: 'com.Subutai.Control.Center',
            delete:  '/Applications/SubutaiControlCenter.app'
end
