cask 'kextviewr' do
  version '1.1.0'
  sha256 'bf57dc55adc7179914a452eeacf553952e86b4e1ff2406875a9a0b21932684ca'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KextViewr_#{version}.zip"
  name 'KextViewr'
  homepage 'https://objective-see.com/products/kextviewr.html'

  app 'KextViewr.app'
end
