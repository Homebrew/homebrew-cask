cask 'fontplop' do
  version '1.1.0'
  sha256 'a98f595d8687eed977ad64aa1d924aa309dd97b2bfcc0ed7be889963ecf2d569'

  # github.com/matthewgonzalez/fontplop was verified as official when first introduced to the cask
  url 'https://github.com/matthewgonzalez/fontplop/releases/download/v#{version}/fontplop-#{version}.dmg'
 appcast 'https://github.com/matthewgonzalez/fontplop/releases.atom', 
         checkpoint: '4af6f6880c06a7c149b34b1a3752e55b085ef0efdf8dc8b9fa3b6a177f4c60bd' 
  name 'Fontplop'
  homepage 'http://www.fontplop.com/'

  app 'Fontplop.app'
end
