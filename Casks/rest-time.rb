cask 'rest-time' do
  version '1.08'
  sha256 '3a9659e17af7cb60de4a1309b800c791c8f8a16a586fd9faefe5e5ddbecc4d0f'

  url 'http://www.publicspace.net/download/RestTime.dmg'
  appcast 'http://www.publicspace.net/app/resttime.xml',
          checkpoint: 'f0e8f26562c1dd7be6c9bca3e6903e1d8e5985e67b296ce5472ab44a952c9765'
  name 'Rest Time'
  homepage 'http://www.publicspace.net/RestTime/'

  auto_updates true

  app 'Rest Time.app'

  zap trash: [
               '~/Library/Caches/net.publicspace.resttime',
               '~/Library/Preferences/net.publicspace.resttime.plist',
             ]
end
