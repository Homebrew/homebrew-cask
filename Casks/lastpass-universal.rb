class LastpassUniversal < Cask
  url 'https://lastpass.com/lpmacosx.dmg'
  homepage 'https://lastpass.com/'
  version 'latest'
  sha256 :no_check
  install 'lpmacosx.pkg'
  uninstall :pkgutil => 'com.lastpass.lpmacosx'
end
