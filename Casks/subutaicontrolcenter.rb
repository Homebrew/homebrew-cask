cask 'subutaicontrolcenter' do
  version '7.3.4'
  sha256 'f71f7991abc9d4272c1d68a8e4c2b12ee99ee0b30c4412a645e10b8a1268628e'

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
