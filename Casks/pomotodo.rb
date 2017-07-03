cask 'pomotodo' do
  version '3.2.2,1493264068'
  sha256 '3c176306627bf20080681cef7d982eb5fcfd535666f79dcef2ddef7fb5fd66cd'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '8f67471dd199a1fdaeda4e5aad44226e85e40c556f946bd141e7e691e45b7fcc'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
