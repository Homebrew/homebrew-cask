cask :v1 => 'prizmo' do
  version :latest
  sha256 :no_check

  url 'http://www.creaceed.com/downloads/prizmo2.zip'
  appcast 'http://www.creaceed.com/appcasts/prizmo2.xml'
  homepage 'http://www.creaceed.com/prizmo'
  license :unknown

  app 'Prizmo.app'
end
