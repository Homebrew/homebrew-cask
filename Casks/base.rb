cask :v1 => 'base' do
  version :latest
  sha256 :no_check

  url 'http://menial.co.uk/base/download/'
  appcast 'http://update.menial.co.uk/software/base/'
  name 'Base'
  homepage 'http://menial.co.uk/base/'
  license :commercial
  tags :vendor => 'Menial'

  app 'Base.app'
end
