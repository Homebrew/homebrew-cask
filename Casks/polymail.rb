cask 'polymail' do
  version '0.89'
  sha256 '539f65f3c377c1a9d4942d9b1c1793532b91afd3325683b1cebf791781f93e25'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'fc73610a55bf652321cfaedefebcb695f10eefeb0b779ff5b17ddb088f462efb'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
