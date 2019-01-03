cask 'nightowl' do
  version '0.2.7'
  sha256 '061610e404ae5ca95cf15058b70d49ef1649a9daf5c249a7cde8e281e524051d'

  url 'https://nightowl.kramser.xyz/files/NightOwl.dmg'
  appcast 'https://nightowl.kramser.xyz/'
  name 'NightOwl'
  homepage 'https://nightowl.kramser.xyz/'

  depends_on macos: '>= :mojave'

  app 'NightOwl.app'
end
