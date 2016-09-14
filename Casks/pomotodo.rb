cask 'pomotodo' do
  version '0.14.1,1473822170'
  sha256 'a5b12ea1d088a784db5a9d33f001f7894b9932e55b757e2a188cc5bf06d6a5f1'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '1063d1cd1e8a129f4bb5eaf9d2198c835b45162a65af1523f1e4416abaf5a6c7'
  name 'Pomodoro'
  homepage 'https://pomotodo.com'
  license :gratis

  app 'Pomotodo.app'
end
