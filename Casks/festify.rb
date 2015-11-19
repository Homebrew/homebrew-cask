cask :v1 => 'festify' do
  version '1.4.2'
  sha256 '07f3ad04bede2d6a622f3652382193e7024f6d1f308b6f1208a036d13c15413a'

  url "http://getfestify.com/updates/mac/packages/#{version}/Festify.zip"
  name 'Festify'
  appcast 'http://getfestify.com/updates/mac/festify.xml',
          :sha256 => 'a82f851ef2ac753411d9d749b8f26d684896e881fdab7a4eed02920d37f8517c'
  homepage 'http://getfestify.com/'
  license :gratis

  app 'Festify.app'
end
