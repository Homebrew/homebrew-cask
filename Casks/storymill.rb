cask 'storymill' do
  version '4.0.5'
  sha256 :no_check

  # s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/MarinerDownloads/StoryMill/StoryMill_Mac_4_0_5.dmg'
  name 'StoryMill'
  homepage 'https://marinersoftware.com/'

  app 'StoryMill'

  zap trash: [
               '~/Library/Caches/com.marinersoftware.StoryMill',
               '~/Library/Preferences/com.marinersoftware.StoryMill.plist',
               '~/Library/Application Support/.StoryMill.plist',
             ],
      rmdir: [
               '~/Library/Application Support/StoryMill/',
             ]
end
