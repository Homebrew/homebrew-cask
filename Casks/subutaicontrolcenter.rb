cask 'subutaicontrolcenter' do
  version '7.2.2'
  sha256 'd0c0801ed6978cfb5ed8a20d0cafdf73cc066589306781be5bfe05c56bcd2d2a'

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
