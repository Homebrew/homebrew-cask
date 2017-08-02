cask 'crunch' do
  version '0.9.0'
  sha256 'b29d0c72d04f3e0e3347f44028930526adb04a39dedb4cc6e2bc0fa51245f9f7'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: 'c75f897b89e6c810b134c92d933c2307481ca7f72c2600831c2706daf0ed534b'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  app 'Crunch.app'
end
