cask 'fish' do
  version '2.4.0'
  sha256 '2736219f658c21d965adee3d4728b4d04d1948f67345871b2a33dd983eebee90'

  url "https://fishshell.com/files/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html',
          checkpoint: 'f13673696814c5d522f32245deb1e5dcf9bf8b2a06ca6707c20acf17035e2ed4'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
