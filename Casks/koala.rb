cask :v1 => 'koala' do
  version '2.0.4'
  sha256 '8b0d3564db80bad52cbad1b0755a5ff55f6d1549ea8f55e4a309552261a61327'

  url "http://fieldgroup.net/cask/koala_#{version}_mac.zip"
  name 'Koala'
  homepage 'http://koala-app.com'
  license :apache

  app 'Koala.app'
end
