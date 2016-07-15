cask 'black-screen' do
  version '0.1.36'
  sha256 '8a61843d5297dee7b19d36f6c73524579e87a215198443076fbfee74043a727b'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '9d479ff44d4449b03d420b85fd61f769a18ccac8968eec36467b787770a2d9c1'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
