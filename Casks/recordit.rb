cask 'recordit' do
  version :latest
  sha256 :no_check

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790',
          :sha256 => '0f023d03b11574353b4656d5e7708d0281b76bc858884a3a11bf8c06daf195c7'
  name 'RecordIt'
  homepage 'http://recordit.co/'
  license :gratis

  app 'RecordIt.app'
end
