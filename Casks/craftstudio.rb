cask :v1 => 'craftstudio' do
  version :latest
  sha256 :no_check

  url 'http://craftstud.io/files/OSX/CraftStudio.pkg'
  homepage 'http://craftstud.io'
  license :unknown

  pkg 'CraftStudio.pkg'

  uninstall :quit => 'com.sparklinlabs.CraftStudioLauncher',
            :pkgutil => 'com.sparklinlabs.CraftStudioLauncher'
  zap       :delete => '~/Library/CraftStudio'

  caveats <<-EOS.undent
    #{title} requires mono-mre, available via

      brew cask install mono-mre
  EOS
end
