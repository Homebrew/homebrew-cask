cask :v1 => 'lastpass-universal' do
  version :latest
  sha256 :no_check

  url 'https://lastpass.com/lpmacosx.dmg'
  homepage 'https://lastpass.com/'
  license :unknown

  pkg 'lpmacosx.pkg'

  uninstall :pkgutil => 'com.lastpass.lpmacosx'
end
