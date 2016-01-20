cask 'pomotodo' do
  version '0.13.0,1451563183'
  sha256 '19e73d09f17e75af7024c70f212a41ba8c02034b70a9a336f84a816d422f5cc7'

  # hackplan.com is the official download host per the vendor homepage
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: 'acc3b5cb3bcdc37b24cda0d61ada7a10c681525e5052f4f96c065df31651e64c'
  name 'Pomodoro'
  homepage 'https://pomotodo.com'
  license :gratis

  app 'Pomotodo.app'
end
