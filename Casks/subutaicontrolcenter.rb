cask 'subutaicontrolcenter' do
  version '7.0.1'
  sha256 '45e87ab51f97158a1f64afe8e0e5dead462438b384decfd2d039b303c19abd43'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-control-center.pkg'
  appcast 'https://github.com/subutai-io/control-center/releases.atom',
          checkpoint: 'a63fc73e1862a27ae4a278b963f8b0c40184400fb831a36acdef8ccbca2bcf3d'
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
