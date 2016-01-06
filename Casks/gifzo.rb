cask 'gifzo' do
  version :latest
  sha256 :no_check

  url 'http://gifzo.net/Gifzo.zip'
  name 'Gifzo'
  homepage 'http://gifzo.net'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Gifzo.app'
end
