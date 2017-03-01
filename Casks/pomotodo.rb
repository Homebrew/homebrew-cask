cask 'pomotodo' do
  version '3.0.25,1487668760'
  sha256 'c0adcffc4e8c8c79a3e6bad9f5857d1059c71f5a837b62338a219e8454938a56'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '8f67471dd199a1fdaeda4e5aad44226e85e40c556f946bd141e7e691e45b7fcc'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
