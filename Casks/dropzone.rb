cask :v1 => 'dropzone' do
  version :latest
  sha256 :no_check

  url 'https://aptonic.com/dropzone3/latest'
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml'
  homepage 'https://aptonic.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Dropzone 3.app'
end
