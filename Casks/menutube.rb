cask 'menutube' do
  version '1.7.2'
  sha256 '3553cd053f622837fac6e365c19daa5946ce72c8ba10eadae4afb11c7fa57851'

  # github.com/edanchenkov/MenuTube/ was verified as official when first introduced to the cask
  url "https://github.com/edanchenkov/MenuTube/releases/download/#{version}/MenuTube-#{version}.dmg"
  appcast 'https://github.com/edanchenkov/MenuTube/releases.atom'
  name 'MenuTube'
  homepage 'https://edanchenkov.github.io/MenuTube/'

  app 'MenuTube.app'
end
