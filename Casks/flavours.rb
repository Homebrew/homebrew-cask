class Flavours < Cask
  url 'http://flavours-updates.interacto.net/Flavours.dmg'
  homepage 'http://flavours.interacto.net/'
  version 'latest'
  sha256 :no_check
  link 'Flavours.app'
  caveats <<-EOS.undent
    Do not use an uninstaller like AppCleaner. Instead, launch Flavours.app
    and use the menu Flavours > Uninstall Flavours...
  EOS
end
