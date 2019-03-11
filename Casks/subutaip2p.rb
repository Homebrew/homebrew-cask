cask 'subutaip2p' do
  version '8.3.1'
  sha256 'e6ed9dcc513275c36984e50cc9a4e853da6ed51d37b2a475139db6b20e224920'

  # cdn.subutai.io:8338/kurjun/rest/raw was verified as official when first introduced to the cask
  url 'https://bazaar.subutai.io/rest/v1/cdn/raw?name=subutai-p2p.pkg&latest&download'
  appcast 'https://github.com/subutai-io/p2p/releases.atom'
  name 'Subutai P2P'
  homepage 'https://subutai.io/'

  auto_updates true

  pkg 'subutai-p2p.pkg'

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('raw'), staged_path.join('subutai-p2p.pkg')]
  end

  uninstall pkgutil:   [
                         'com.Subutai.P2P',
                         'net.sf.tuntaposx.tap',
                         'net.sf.tuntaposx.tun',
                       ],
            kext:      [
                         'net.sf.tuntaposx.tap',
                         'net.sf.tuntaposx.tun',
                       ],
            launchctl: [
                         'io.subutai.p2p.daemon',
                         'net.sf.tuntaposx.tap',
                         'net.sf.tuntaposx.tun',
                       ],
            delete:    '/Applications/SubutaiP2P.app'
end
