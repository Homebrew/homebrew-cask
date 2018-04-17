cask 'subutaitray' do
  version '6.3.0'
  sha256 '9afa78a7d343bab130e42dc6a7e5a4fa4b2b1bdb401ec0af2949bc834a10fb3a'

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-tray.pkg'
  appcast 'https://github.com/subutai-io/tray/releases.atom',
          checkpoint: 'f942a393cdd1c8f86f90bd85250d7df33297d141571eb2e13894feb1eaddb311'
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
