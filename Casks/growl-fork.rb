class GrowlFork < Cask
  url 'https://www.macupdate.com/download/41038/Growl-1.2.2f1.dmg'
  homepage 'https://www.macupdate.com/app/mac/41038/growl-fork'
  version '1.2.2f1'
  sha1 '34ee60ee276cc85f144667a25d70999c308afa36'
  install 'Growl.pkg'
  uninstall :files => '/Library/PreferencePanes/Growl.prefPane'
end
