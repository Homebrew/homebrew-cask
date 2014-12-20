cask :v1 => 'hype' do
  version :latest
  sha256 :no_check

  url 'http://tumult.com/hype/download/Hype.zip'
  homepage 'http://tumult.com/hype/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hype2.app'
end
