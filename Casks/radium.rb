cask :v1 => 'radium' do
  version :latest
  sha256 :no_check

  url 'http://catpigstudios.com/Radium/updates/Radium.zip'
  name 'Radium'
  homepage 'http://catpigstudios.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app ''
end
