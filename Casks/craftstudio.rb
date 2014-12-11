cask :v1 => 'craftstudio' do
  version :latest
  sha256 :no_check

  url 'http://craftstud.io/files/OSX/CraftStudio.pkg'
  homepage 'http://craftstud.io'
  license :unknown    # todo: improve this machine-generated value

  pkg 'CraftStudio.pkg'

  uninstall :quit => 'com.sparklinlabs.CraftStudioLauncher',
            :pkgutil => 'com.sparklinlabs.CraftStudioLauncher'
  zap       :delete => '~/Library/CraftStudio'

  caveats <<-EOS.undent
    #{token} requires mono-mre, available via

      brew cask install mono-mre
  EOS
end
