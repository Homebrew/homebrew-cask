cask 'subutaicontrolcenter' do
  version '7.3.1'
  sha256 '6e48d6fa8522efdbdb0c65473cbefbb71a0c1c88bf7750a9ee52de1ea175c1f8'

  url 'https://bazaar.subutai.io/rest/v1/cdn/raw?name=subutai-control-center.pkg&latest&download'
  appcast 'https://github.com/subutai-io/control-center/releases.atom'
  name 'Subutai Control Center'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-control-center.pkg'

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('raw'), staged_path.join('subutai-control-center.pkg')]
  end

  uninstall pkgutil: 'com.Subutai.Control.Center',
            delete:  '/Applications/SubutaiControlCenter.app'
end
