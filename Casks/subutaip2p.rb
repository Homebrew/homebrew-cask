cask 'subutaip2p' do
  version '6.0.2'
  sha256 '8aae2da5d1226c8e8239aa15d9507a0b7e99a4e384ea7e75378f113496f2425e'

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-p2p.pkg'
  appcast 'https://github.com/subutai-io/p2p/releases.atom',
          checkpoint: 'adba3a6bba0ae5a1c08de017c4dd3a2321c61200007d41a3fd5784d1c8374b6c'
  name 'Subutai P2P'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-p2p.pkg'

  # This is a hack to force the file extension.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('get'), staged_path.join('subutai-p2p.pkg')]
  end

  uninstall pkgutil: 'com.Subutai.P2P'
end
