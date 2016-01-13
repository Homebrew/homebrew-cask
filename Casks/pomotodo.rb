cask 'pomotodo' do
  version '0.13.0,1451563183'
  sha256 '19e73d09f17e75af7024c70f212a41ba8c02034b70a9a336f84a816d422f5cc7'

  # hackplan.com is the official download host per the vendor homepage
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          :checkpoint => '573e904ed563b7b51b7dbf384ba0359923de23a0041e867e664594ab3699a181'
  name 'Pomodoro'
  homepage 'https://pomotodo.com'
  license :gratis

  app 'Pomotodo.app'
end
