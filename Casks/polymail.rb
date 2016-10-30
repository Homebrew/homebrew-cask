cask 'polymail' do
  version '1.12'
  sha256 'd26a85d29caf178bf6989526a35bba8aac03e1286184e2995af7611fab1e2c62'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'ac0081b9854d9d28aed7be9f734772e3c018ef3ee87371d0039d60d85d7764c2'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
