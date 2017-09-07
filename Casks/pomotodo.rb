cask 'pomotodo' do
  version '3.3.0,1499943104'
  sha256 '429c1235bb4a0279723bf141ad92690acf1a2e0c813affb38e0d510cf107821b'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast "https://air.pomotodo.com/v1/p/com.pomotodo.PomotodoMac#{version.major}/latest.xml",
          checkpoint: '21ebb47c0df9fa1e7af72db365b4f76f9bc0db105e16d866d36f6ad2512a7ba3'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
