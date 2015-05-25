cask :v1 => 'm3unify' do
  version :latest
  sha256 :no_check

  url 'http://dougscripts.com/itunes/scrx/m3unifyml.zip'
  name 'M3Unify'
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          :sha256 => 'e2a0cd2a135e0f54344babb3300f8aeb99498953474955a9366e5f5989e05cc1'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
