cask 'proxyman' do
  version '2.0.1'
  sha256 '29e802f10b3ddbbfc9473087e97cd263151ef275c363fab400803c094a44fc6f'

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
