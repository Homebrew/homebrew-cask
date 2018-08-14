cask 'optionspace' do
  version '1.0.4'
  sha256 'e03cc07a334db896f677f3b77b3b1aca6cbdab80f75614a3e03cdf4519e35355'

  url "https://optionspace.co/download/OptionSpace_v#{version}.dmg"
  appcast 'https://optionspace.co/app/appcast.xml'
  name 'OptionSpace'
  homepage 'https://optionspace.co/'

  app 'OptionSpace.app'

  zap trash: [
               '~/Library/Application Support/OptionSpace',
               '~/Library/Preferences/org.sparkle-project.Sparkle.Autoupdate.plist',
               '~/Library/Preferences/MeAndUser.OptionSpace.plist',
             ]
end
