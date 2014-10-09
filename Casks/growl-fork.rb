class GrowlFork < Cask
  version '1.2.2f1'
  sha256 'b57085eed9bafcafa75bdc2a4a482c77d33ebf2f1d9994bf5ff5a997c3958bcc'

  url "https://bitbucket.org/pmetzger/growl/downloads/Growl-#{version}.dmg"
  homepage 'https://bitbucket.org/pmetzger/growl'
  license :unknown

  pkg 'Growl.pkg'
  uninstall :delete => '/Library/PreferencePanes/Growl.prefPane'
end
