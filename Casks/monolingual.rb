cask :v1 => 'monolingual' do
  version '1.5.8'
  sha256 'bba2209c5047c69b1f8b3a692fa916c24a05b9bb098f9b6073b85f421d9be3b7'

  url "https://downloads.sourceforge.net/project/monolingual/monolingual/#{version}/Monolingual-#{version}.dmg"
  appcast 'http://monolingual.sourceforge.net/appcast.xml',
          :sha256 => 'e758b13c93eb366479fac0f1a25e3d50bbf8bb8d44d891d363dd0d5349a9f126'
  homepage 'http://monolingual.sourceforge.net/'
  license :oss

  app 'Monolingual.app'
end
