cask :v1 => 'dropzone' do
  version '3.5.2'
  sha256 '98c754dd91f9dd3c05a220b93e0ab264434ffc97d9ef56f41bc282c16fa9a8dc'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Dropzone 3.app'
end
