cask :v1 => 'gifzo' do
  version :latest
  sha256 :no_check

  url 'http://gifzo.net/Gifzo.zip'
  homepage 'http://gifzo.net'
  license :unknown    # todo: improve this machine-generated value

  app 'Gifzo.app'
end
