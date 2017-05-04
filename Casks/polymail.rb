cask 'polymail' do
  version '1.35'
  sha256 '7da5c110d109bb1ef56e9b9ff946bbbe45b574eac8ad568078158393f5a89df4'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'd648f2446d54a64a9a4abe552b0087afb9dd1c3e07a550f5ba35dff9ce42d281'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
