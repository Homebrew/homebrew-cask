cask 'subutaip2p' do
  version '6.1.3'
  sha256 '48c26b46ad2d84e786c50456f66a41729663b9fbbc15b1a0f649ffbb0106824a'

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-p2p.pkg'
  appcast 'https://github.com/subutai-io/p2p/releases.atom',
          checkpoint: 'b7c5fd9ff412824769e5744234e5ea3da9ebda724251a960b6c2702d92ba07ec'
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
