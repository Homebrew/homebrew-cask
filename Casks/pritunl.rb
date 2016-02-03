cask 'pritunl' do
  version '0.10.17'
  sha256 '777236f5157e4efda18b2fd67424fc09067bcb84e20a05bb1075c8fc9291fef5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '5361fbf312ec28b582269d52c3080b8196dc4671bff0f18ac99c74655bd3dcbb'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com'
  license :gpl

  pkg 'Pritunl.pkg'

  uninstall pkgutil: 'com.pritunl.pkg.Pritunl'

  zap delete: [
                '~/Library/Application Support/pritunl',
                '~/Library/Caches/pritunl',
                '~/Library/Preferences/com.electron.pritunl.plist',
              ]
end
