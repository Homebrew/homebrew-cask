cask 'sixtyforce' do
  version :latest
  sha256 :no_check

  url 'http://sixtyforce.com/download/sixtyforce.zip'
  name 'sixtyforce'
  homepage 'http://sixtyforce.com/'
  license :freemium

  app 'sixtyforce.app'
end
