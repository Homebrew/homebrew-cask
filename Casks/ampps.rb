cask :v1 => 'ampps' do
  version '3.0'
  sha256 '290f2df59bf657d8a43d809bae55bb81cf392cdc3e58fe0f90cdff47f99ede51'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'http://www.ampps.com'
  license :gratis

  suite 'AMPPS'
end
