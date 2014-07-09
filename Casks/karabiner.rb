class Karabiner < Cask
  version 'latest'
  sha256 :no_check

  url 'https://pqrs.org/osx/karabiner/files/Karabiner-10.0.0.dmg'
  homepage 'https://pqrs.org/osx/karabiner/'

  install 'Karabiner.pkg'
end
