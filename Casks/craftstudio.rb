class Craftstudio < Cask
  version 'latest'
  sha256 :no_check

  url 'http://craftstud.io/files/OSX/CraftStudio.pkg'
  homepage 'http://craftstud.io'

  pkg 'CraftStudio.pkg'

  uninstall :quit => 'com.sparklinlabs.CraftStudioLauncher',
            :pkgutil => 'com.sparklinlabs.CraftStudioLauncher'
            # zap :files => '~/Library/CraftStudio'

  caveats do
    "Requires mono-mre. You can install this by running brew cask install mono-mre."
  end
end
