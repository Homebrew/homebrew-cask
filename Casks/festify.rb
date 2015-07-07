cask :v1 => 'festify' do
  version :latest
  sha256 :no_check

  url 'http://getfestify.com/downloads/mac/Festify.zip'
  name 'Festify'
  appcast 'http://getfestify.com/updates/mac/festify.xml',
          :sha256 => 'a82f851ef2ac753411d9d749b8f26d684896e881fdab7a4eed02920d37f8517c'
  homepage 'http://getfestify.com/'
  license :gratis

  app 'Festify.app'
end
