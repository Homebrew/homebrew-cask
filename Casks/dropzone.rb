cask :v1 => 'dropzone' do
  version '3.5.4'
  sha256 '4595172ca1ccdef7882dd856f7ef2fbda6419689f506b8dc9e5c56f39b11378d'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :commercial

  app 'Dropzone 3.app'
end
