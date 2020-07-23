cask 'proxyman' do
  version '2.3.0'
  sha256 '08e3a96afa6ecc4cb4ee689b905ac6fbe574c0cedc57afd75bf1b0ba47028240'

  # github.com/ProxymanApp/Proxyman/ was verified as official when first introduced to the cask
  url "https://github.com/ProxymanApp/Proxyman/releases/download/#{version}/Proxyman_#{version}.dmg"
  appcast 'https://github.com/ProxymanApp/Proxyman/releases.atom'
  name 'Proxyman'
  homepage 'https://proxyman.io/'

  auto_updates true

  app 'Proxyman.app'

  uninstall_postflight do
    stdout, * = system_command '/usr/bin/security',
                               args: ['find-certificate', '-a', '-c', 'Proxyman', '-Z'],
                               sudo: true
    hashes = stdout.lines.grep(%r{^SHA-256 hash:}) { |l| l.split(':').second.strip }
    hashes.each do |h|
      system_command '/usr/bin/security',
                     args: ['delete-certificate', '-Z', h],
                     sudo: true
    end
  end

  uninstall quit:      'com.proxyman.NSProxy',
            launchctl: 'com.proxyman.NSProxy.HelperTool',
            delete:    '/Library/PrivilegedHelperTools/com.proxyman.NSProxy.HelperTool'

  zap trash: [
               '~/.proxyman*',
               '~/Library/Application Support/com.proxyman',
               '~/Library/Application Support/com.proxyman.NSProxy',
               '~/Library/Caches/Proxyman',
               '~/Library/Caches/com.proxyman.NSProxy',
               '~/Library/Cookies/com.proxyman.binarycookies',
               '~/Library/Cookies/com.proxyman.NSProxy.binarycookies',
               '~/Library/Preferences/com.proxyman.plist',
               '~/Library/Preferences/com.proxyman.NSProxy.plist',
               '~/Library/Saved Application State/com.proxyman.NSProxy.savedState',
             ]
end
