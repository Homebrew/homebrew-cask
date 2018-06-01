cask 'subutaicontrolcenter' do
  version '7.0.2'
  sha256 '38ce25989209ce475a91b3c6f1d52c5442d58845755814d02fcb7a4c544c1907'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-control-center.pkg'
  appcast 'https://github.com/subutai-io/control-center/releases.atom',
          checkpoint: '986178fb005d81b2858f70ddbfc3aff2346aa6f570deb08661004c3bf5fa4c2d'
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
