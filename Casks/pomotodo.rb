cask 'pomotodo' do
  version '3.1.1,1490104557'
  sha256 '1da7df446d28386e4055d99ef29bdfdc3589a7adf30bbb5b1d712ff58e21fcc9'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '8f67471dd199a1fdaeda4e5aad44226e85e40c556f946bd141e7e691e45b7fcc'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
