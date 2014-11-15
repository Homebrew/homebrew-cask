cask :v1 => 'gargoyle' do
  version '2011.1'
  sha256 '4e830ad3feec78d623ce5c13ce14f440f9769d302ac46604afc4b9785baa038c'

  url "https://garglk.googlecode.com/files/gargoyle-#{version}-mac.dmg"
  homepage 'https://code.google.com/p/garglk/'
  license :oss

  app 'Gargoyle.app'
end
