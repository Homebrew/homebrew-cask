class Qmind < Cask
  version '0.3.4'
  sha256 '498dc5b753804d25cbf15afbdb8641af1ddcf53b65ab04d3188c7a8b669f6695'

  url 'https://github.com/qvacua/qmind/releases/download/v0.3.4-22/Qmind-0.3.4.zip'
  appcast 'http://qvacua.com/qmind/appcast.xml'
  homepage 'http://qvacua.com'

  app 'Qmind.app'
end
