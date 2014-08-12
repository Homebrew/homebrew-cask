class LastpassUniversal < Cask
  version 'latest'
  sha256 :no_check

  url 'https://lastpass.com/lpmacosx.dmg'
  homepage 'https://lastpass.com/'

  install 'lpmacosx.pkg'
  uninstall :pkgutil => 'com.lastpass.lpmacosx'
end
