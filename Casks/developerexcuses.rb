cask 'developerexcuses' do
  version '2.1.2'
  sha256 '9e2b0d8aa60b6538d289213b5d84e6ec897f119ed782ec15551cd24b4d29450f'

  url "https://github.com/kimar/DeveloperExcuses/releases/download/#{version}/DeveloperExcuses.saver.zip"
  appcast 'https://github.com/kimar/DeveloperExcuses/releases.atom'
  name 'Developer Excuses Screensaver'
  homepage 'https://github.com/kimar/DeveloperExcuses'

  screen_saver 'DeveloperExcuses.saver'
end
