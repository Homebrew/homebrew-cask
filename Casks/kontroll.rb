cask :v1 => 'kontroll' do
  version 'latest'
  sha256 :no_check

  url 'http://kontroll.io/download/Kontroll.zip'
  name 'kontroll'
  homepage 'http://kontroll.io/'
  license :closed

  app 'Kontroll.app'
end
