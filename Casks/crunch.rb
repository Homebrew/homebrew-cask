cask 'crunch' do
  version '0.9.0'
  sha256 'b29d0c72d04f3e0e3347f44028930526adb04a39dedb4cc6e2bc0fa51245f9f7'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: 'c025f4a28d7bfd15788ad7ab9e51b63ebf1a790c45c33f09465d9711ce2a47f1'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  app 'Crunch.app'
end
