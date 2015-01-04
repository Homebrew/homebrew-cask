cask :v1 => 'base' do
  version :latest
  sha256 :no_check

  url 'http://menial.co.uk/base/download/'
  name 'Base'
  appcast 'http://update.menial.co.uk/software/base/'
  homepage 'http://menial.co.uk/base/'
  license :commercial
  tags :vendor => 'Menial'

  app 'Base.app'
end
