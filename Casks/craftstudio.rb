cask :v1 => 'craftstudio' do
  version :latest
  sha256 :no_check

  url 'http://craftstud.io/files/OSX/CraftStudio.pkg'
  name 'CraftStudio'
  homepage 'http://craftstud.io'
  license :commercial

  pkg 'CraftStudio.pkg'

  uninstall :quit => 'com.sparklinlabs.CraftStudioLauncher',
            :pkgutil => 'com.sparklinlabs.CraftStudioLauncher'

  zap       :delete => '~/Library/CraftStudio'

  depends_on :cask => 'mono-mre'
end
