cask 'knockknock' do
  version '1.9.1'
  sha256 '4adfba2ac018ab99200b57c4e2dbe9cbb7681b4af9384500e19a6e0c2dedf698'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KnockKnock.txt',
          checkpoint: 'bb686927f517b0ccdfb89e46d09dfe3d087203c5d63fc719bb075e41667a3c19'
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'

  depends_on macos: '>= :mountain_lion'

  app 'KnockKnock.app'

  zap trash: [
               '~/Library/Caches/com.objective-see.KnockKnock',
               '~/Library/Preferences/com.objective-see.KnockKnock.plist',
               '~/Library/Saved Application State/com.objective-see.KnockKnock.savedState',
             ]
end
