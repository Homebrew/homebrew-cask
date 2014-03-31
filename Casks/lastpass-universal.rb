class LastpassUniversal < Cask
  url 'https://lastpass.com/lpmacosx.dmg'
  homepage 'https://lastpass.com/'
  version 'latest'
  no_checksum
  install 'lpmacosx.pkg'
  uninstall :pkgutil => 'com.lastpass.lpmacosx'
end
