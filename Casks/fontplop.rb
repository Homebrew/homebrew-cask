cask 'fontplop' do
  version '1.1.0'
  sha256 'a98f595d8687eed977ad64aa1d924aa309dd97b2bfcc0ed7be889963ecf2d569'

  # github.com/matthewgonzalez/fontplop was verified as official when first introduced to the cask
  url "https://github.com/matthewgonzalez/fontplop/releases/download/v#{version}/fontplop-#{version}.dmg"
  appcast 'https://github.com/matthewgonzalez/fontplop/releases.atom',
          checkpoint: '29dd325da8bcfac866fd7999c16b1764d7c48285e9a1b65428b5e3df30f4e120'
  name 'Fontplop'
  homepage 'http://www.fontplop.com/'

  app 'fontplop.app'
end
