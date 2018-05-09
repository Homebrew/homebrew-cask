cask 'developerexcuses' do
  version '2.1.1'
  sha256 '8d22c91c6932ef353a12eba734fe265fa68b058f31db14358ff098a06f01bddd'

  url "https://github.com/kimar/DeveloperExcuses/releases/download/#{version}/DeveloperExcuses.saver.zip"
  appcast 'https://github.com/kimar/DeveloperExcuses/releases.atom',
          checkpoint: 'a7a86e303bb2afef46b57ff34db5f233f12a468522df6eb824e7738d594f2cdc'
  name 'Developer Excuses Screensaver'
  homepage 'https://github.com/kimar/DeveloperExcuses'

  screen_saver 'DeveloperExcuses.saver'
end
