cask 'pomotodo' do
  version '3.4.2,1508736942'
  sha256 '7726496a48eeb2901c9762de2a2df743b2010e7ad0b6ccd2cab5a4f49a496f93'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "https://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo.#{version.before_comma}.dmg"
  appcast "https://air.pomotodo.com/v1/p/com.pomotodo.PomotodoMac#{version.major}/latest.xml",
          checkpoint: '91adc2d35a01e0b2cd65e87da42573474bc023a6e852dcc06bdd0e8816fa147d'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
