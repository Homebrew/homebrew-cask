cask 'ejector' do
  version '0.9.0'
  sha256 '78e588ba2f9b02c753af7e4f432c0dc980d3745c3b8d3978b6b11e113e109f19'

  url "http://www.jeb.com.fr/soft/Ejector-v#{version}.dmg"
  name 'Ejector'
  homepage 'http://www.jeb.com.fr/en/ejector.shtml'
  license :gratis

  app 'Ejector.app'
end
