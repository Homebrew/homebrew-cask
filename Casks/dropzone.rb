cask :v1 => 'dropzone' do
  version :latest
  sha256 :no_check

  url 'https://aptonic.com/dropzone3/latest'
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml'
  homepage 'https://aptonic.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Dropzone 3.app'
end
