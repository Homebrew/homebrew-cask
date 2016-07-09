cask 'polymail' do
  version '0.92'
  sha256 '257aeebbddff10b1048f4c717aa7f49f4b7d658eb8cf26a4bab60bda7b55b82a'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'b34f147a02724f6ed1f01a14a0f7ea3dc009341e78f405e81854006c82a84a37'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
