class LastpassUniversal < Cask
  url 'https://lastpass.com/lpmacosx.dmg'
  homepage 'https://lastpass.com/'
  version 'latest'
  sha1 'no_checksum'
  install 'lpmacosx.pkg'
end
