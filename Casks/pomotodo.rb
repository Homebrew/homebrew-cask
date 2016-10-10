cask 'pomotodo' do
  version '0.14.3,1474212893'
  sha256 '02acbed6a3a975c79799192fcdfdbc191a1ef3b80eba31a86ca61fe7bcfed18b'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '29a7e720aada903ab887d8faeddb9ad6b68e53ddf8c0b4eb81ced2c0fc7090df'
  name 'Pomodoro'
  homepage 'https://pomotodo.com'

  app 'Pomotodo.app'
end
