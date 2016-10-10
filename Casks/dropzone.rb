cask 'dropzone' do
  version '3.6.0'
  sha256 '266ea1a8b14d2f4369a536289149588da111455e675e59ef1a777582a5ea39c8'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '5572a5a59d087717dcc4f3a44af1e772299d615122dfe8fe940d61ce8290e092'
  name 'Dropzone'
  homepage 'https://aptonic.com'

  app "Dropzone #{version.major}.app"
end
