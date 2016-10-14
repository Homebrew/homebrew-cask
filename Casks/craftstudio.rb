cask 'craftstudio' do
  version :latest
  sha256 :no_check

  url 'http://craftstud.io/files/OSX/CraftStudio.pkg'
  name 'CraftStudio'
  homepage 'http://craftstud.io'

  depends_on cask: 'mono-mre'

  pkg 'CraftStudio.pkg'

  uninstall quit:    'com.sparklinlabs.CraftStudioLauncher',
            pkgutil: 'com.sparklinlabs.CraftStudioLauncher'

  zap       delete: '~/Library/CraftStudio'
end
