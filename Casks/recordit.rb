cask :v1 => 'recordit' do
  version :latest
  sha256 :no_check

  url 'http://recordit.co/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790'
  homepage 'http://recordit.co/'
  license :unknown

  app 'RecordIt.app'
end
