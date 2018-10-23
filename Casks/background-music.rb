cask 'background-music' do
  version '0.2.0'
  sha256 '78184ba743ba79e8cbd81bc8e2ea28b59100cc626ea77be58d6612bcfe2c7b78'

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  appcast 'https://github.com/kyleneideck/BackgroundMusic/releases.atom'
  name 'Background Music'
  homepage 'https://github.com/kyleneideck/BackgroundMusic'

  depends_on macos: '>= :yosemite'

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall launchctl: 'com.bearisdriving.BGM.XPCHelper',
            pkgutil:   'com.bearisdriving.BGM',
            quit:      'com.bearisdriving.BGM.App',
            script:    '/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh'
end
