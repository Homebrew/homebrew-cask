cask 'bdash' do
  version '1.1.0'
  sha256 '3ac716d55d7d615554256d443b9bef84b13fc3d1c99be3fe9fc0fe1e6946cea4'

  url "https://github.com/bdash-app/bdash/releases/download/#{version}/Bdash-#{version}-macOS.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '5e55b65296f57af1b74f22823e6e37e4794ac91f1670a6e87dcbc48ab4e7ee4a'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
