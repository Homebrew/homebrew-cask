cask 'subutaicontrolcenter' do
  version '7.3.3'
  sha256 'f956d3a346f55b3a73dbad679737d6fdb6588f7d6bf3f68a3d25ad530cb70ab5'

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
