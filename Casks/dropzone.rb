cask :v1 => 'dropzone' do
  version '3.5.3'
  sha256 '79a3c4dde4378cbfef3480048b9e72bbeeae43304f14a6a23160b0501a564516'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Dropzone 3.app'
end
