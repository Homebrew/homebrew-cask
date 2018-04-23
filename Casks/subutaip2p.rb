cask 'subutaip2p' do
  version '6.3.1'
  sha256 '36f2cd5c3bf7b7cae6c7c7f00a779bd440419f1ed29ad7c1e67f3a3afea5ed94'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://cdn.subutai.io:8338/kurjun/rest/raw/get?name=subutai-p2p.pkg'
  appcast 'https://github.com/subutai-io/p2p/releases.atom',
          checkpoint: 'c823531b976ea937fa8d9d17dcb29777a58bf718804108c6ee767d93c96101f0'
  name 'Subutai P2P'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-p2p.pkg'

  # This is a hack to force the file extension.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('get'), staged_path.join('subutai-p2p.pkg')]
  end

  uninstall pkgutil: [
                       'com.Subutai.P2P',
                       'net.sf.tuntaposx.tap',
                       'net.sf.tuntaposx.tun',
                     ],
            kext:    [
                       'net.sf.tuntaposx.tap',
                       'net.sf.tuntaposx.tun',
                     ]
end
