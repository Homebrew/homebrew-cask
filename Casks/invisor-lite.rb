cask :v1 => 'invisor-lite' do
  version '3.3'
  sha256 '74bd41fa922a710016d7922e0814558df58ce1790da57b00d867cb58b9191ad3'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
