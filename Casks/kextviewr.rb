cask 'kextviewr' do
  version '1.1.0'
  sha256 'bf57dc55adc7179914a452eeacf553952e86b4e1ff2406875a9a0b21932684ca'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KextViewr_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: 'b2004932186e0eb176a9ac01fe499de292d502d7a17559e900822f9cdbfa74d6'
  name 'KextViewr'
  homepage 'https://objective-see.com/products/kextviewr.html'

  app 'KextViewr.app'
end
