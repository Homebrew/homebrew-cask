cask 'brave' do
  version '0.12.11dev'
  sha256 '06bf6eff55832f2e37571126cf87545121b11ab7905b8744352bdcd4c06449de'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '664572153b76cf7816050bf9ea8016625b4e8293533e247a56fba6062b55b22a'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
