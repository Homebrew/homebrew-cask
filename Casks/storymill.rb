cask 'storymill' do
  version '4.0.5'
  sha256 'd16e6609df0530f08c7da830744602ca060dc40375bcc76b143056f58501fa8a'

  # s3.amazonaws.com/MarinerDownloads/StoryMill/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/MarinerDownloads/StoryMill/StoryMill_Mac_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.marinersoftware.com/sparkle/StoryMill/StoryMill.xml'
  name 'StoryMill'
  homepage 'https://marinersoftware.com/'

  app 'StoryMill.app'

  zap trash: [
               '~/Library/Caches/com.marinersoftware.StoryMill',
               '~/Library/Preferences/com.marinersoftware.StoryMill.plist',
               '~/Library/Application Support/.StoryMill.plist',
             ],
      rmdir: '~/Library/Application Support/StoryMill/'
end
