cask 'airparrot' do
  version '2.7.0'
  sha256 'e2fb9fe745a98f6948d89e09c9666f298878a90ceff7c6f31cd643ec1520184e'

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot#{version.major}.xml",
          checkpoint: '4da59738dbbdb58a1203863c663b63375005ec601b166518b70a63e933d30065'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'

  app "AirParrot #{version.major}.app"
end
