cask 'pritunl' do
  version '1.0.1075.52'
  sha256 'd26f68e3d4acd6f793c2067e9a32f0b3bbcb265fe50a4193ecf73caf54cebd39'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: 'abbfafa4acb850251becef5d320fe89e58bf955ab111c73d10386afe93c37fc0'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com'

  pkg 'Pritunl.pkg'

  uninstall pkgutil: 'com.pritunl.pkg.Pritunl'

  zap delete: [
                '~/Library/Application Support/pritunl',
                '~/Library/Caches/pritunl',
                '~/Library/Preferences/com.electron.pritunl.plist',
              ]
end
