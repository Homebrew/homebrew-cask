cask 'black-screen' do
  version '0.2.48,0.2.53'
  sha256 '38f5c7c252e14874d4c7d5202774e108c6b6519fbed00f0c719d3a6438a66a8f'

  url "https://github.com/shockone/black-screen/releases/download/v#{version.after_comma}/black-screen-#{version.before_comma}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'ed0760f5f8966c444931340edfc7cd8945eb5a7521ca8fd71c21d71c4b483f51'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
