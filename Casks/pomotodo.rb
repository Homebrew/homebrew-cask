cask 'pomotodo' do
  version '3.0.26,1488772232'
  sha256 '64cc4414b3d7829dfb50d690cca4273f2c9385279fb33d0a63dd78ba6da14310'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '8f67471dd199a1fdaeda4e5aad44226e85e40c556f946bd141e7e691e45b7fcc'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
