class GrowlFork < Cask
  version '1.2.2f1'
  sha256 'b57085eed9bafcafa75bdc2a4a482c77d33ebf2f1d9994bf5ff5a997c3958bcc'

  url 'https://www.macupdate.com/download/41038/Growl-1.2.2f1.dmg'
  homepage 'https://www.macupdate.com/app/mac/41038/growl-fork'

  pkg 'Growl.pkg'
  uninstall :files => '/Library/PreferencePanes/Growl.prefPane'
end
