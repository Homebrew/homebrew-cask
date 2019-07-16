cask 'polymail' do
  version '2.1.4'
  sha256 'f8280b05fcb2923d46830f005d4103235d72228437b8457f666c44026557b1c9'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
