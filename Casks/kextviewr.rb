cask 'kextviewr' do
  version '1.1.0'
  sha256 'bf57dc55adc7179914a452eeacf553952e86b4e1ff2406875a9a0b21932684ca'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KextViewr_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KextViewr.txt',
          checkpoint: '1b2b64639aa6df6738e053d928918243299dd460cbae2c293fe0ee9fe035140b'
  name 'KextViewr'
  homepage 'https://objective-see.com/products/kextviewr.html'

  depends_on macos: '>= :mountain_lion'

  app 'KextViewr.app'

  zap trash: '~/Library/Caches/com.objective-see.KextViewr'
end
