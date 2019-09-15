cask 'background-music' do
  version '0.3.1'
  sha256 '070bef360bff9e52639a4fbf23ee7052b9645004a431af6ad62997cfed99e2d7'

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  appcast 'https://github.com/kyleneideck/BackgroundMusic/releases.atom'
  name 'Background Music'
  homepage 'https://github.com/kyleneideck/BackgroundMusic'

  depends_on macos: '>= :yosemite'

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall launchctl: 'com.bearisdriving.BGM.XPCHelper',
            pkgutil:   'com.bearisdriving.BGM',
            quit:      'com.bearisdriving.BGM.App',
            script:    {
                         executable: '/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh',
                         sudo:       true,
                       }
end
