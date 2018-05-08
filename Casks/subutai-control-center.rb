cask 'subutai-control-center' do
  version '6.10.0'
  sha256 '6d11367d7ae44124aea364c35e00217118c29f58b5288a2b567d1aee884dd755'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-control-center.pkg'
  appcast 'https://github.com/subutai-io/control-center/releases.atom',
          checkpoint: 'e9212afc4368bd27fc509dd59b030a194316180793f3f4123b46f6e7eaa3a194'
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
