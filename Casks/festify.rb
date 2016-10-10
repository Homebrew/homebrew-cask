cask 'festify' do
  version '1.4.2'
  sha256 '07f3ad04bede2d6a622f3652382193e7024f6d1f308b6f1208a036d13c15413a'

  url "https://getfestify.com/updates/mac/packages/#{version}/Festify.zip"
  appcast 'https://getfestify.com/updates/mac/festify.xml',
          checkpoint: 'c38bc30efe3ecf2ac377a760cac281fbda793baf37949bbb331ad7359c082544'
  name 'Festify'
  homepage 'https://getfestify.com/'

  app 'Festify.app'
end
