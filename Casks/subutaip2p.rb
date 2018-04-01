cask 'subutaip2p' do
  version '6.2.5'
  sha256 '9bb401762662d8c2438fdab579cca74fd0d30c1038fc4a926feed6a6b05b8205'

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-p2p.pkg'
  appcast 'https://github.com/subutai-io/p2p/releases.atom',
          checkpoint: '34501198e26cfeccfe77710a421e85c908a2e1d166b609cf4de5aca1623e66cf'
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
