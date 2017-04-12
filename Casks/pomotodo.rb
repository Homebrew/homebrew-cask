cask 'pomotodo' do
  version '3.1.6,1491546051'
  sha256 'b4fab1c02498d189aec1e4b50d88fdc56cd99841b8ddc1a48764102711c09541'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '8f67471dd199a1fdaeda4e5aad44226e85e40c556f946bd141e7e691e45b7fcc'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
