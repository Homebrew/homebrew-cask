cask 'sound-control' do
  version '2.1.6,4297'
  sha256 '33feccad185a1cc53ac5e8e89202484254ca2f737ebf3ea86a988296f93c44a9'

  url "https://staticz.com/download/#{version.after_comma}/"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
