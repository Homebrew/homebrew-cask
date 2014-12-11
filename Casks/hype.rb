cask :v1 => 'hype' do
  version :latest
  sha256 :no_check

  url 'http://tumult.com/hype/download/Hype.zip'
  homepage 'http://tumult.com/hype/'
  license :unknown    # todo: improve this machine-generated value

  app 'Hype2.app'
end
