cask :v1 => 'messenger' do
  version '0.0.8.1433711909-d640fa4b728ab130'
  sha256 '18b7797830c948e48801563d12b24192eb7149b9984f84c4425f3ba7c1238c2d'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
