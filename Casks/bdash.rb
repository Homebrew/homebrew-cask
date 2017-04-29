cask 'bdash' do
  version '1.1.0'
  sha256 '3ac716d55d7d615554256d443b9bef84b13fc3d1c99be3fe9fc0fe1e6946cea4'

  url "https://github.com/bdash-app/bdash/releases/download/#{version}/Bdash-#{version}-macOS.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '95e075bce9e77985a21130a3f9c9891ec1c755d972ae7b3dc750661c80f8868a'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
