cask :v1 => 'qmind' do
  version '0.3.4'
  sha256 '498dc5b753804d25cbf15afbdb8641af1ddcf53b65ab04d3188c7a8b669f6695'

  url "https://github.com/qvacua/qmind/releases/download/v#{version}-22/Qmind-#{version}.zip"
  appcast 'http://qvacua.com/qmind/appcast.xml',
          :sha256 => '65c18e86225f5808dc956836e537be3255f610a348bd899f92016ecb1cb74aab'
  homepage 'http://qvacua.com'
  license :gpl

  app 'Qmind.app'
end
