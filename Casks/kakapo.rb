cask :v1 => 'kakapo' do
  version '1.1.0'
  sha256 'd002b403029ee8939f77136531aa517947bebc1d2fc6dc8d2d8628e9068e9dde'

  url "https://github.com/bluedaniel/Kakapo-app/releases/download/v#{version}/Kakapo-#{version}-Mac.zip"
  appcast 'https://github.com/bluedaniel/Kakapo-app/releases.atom'
  name 'Kakapo'
  homepage 'http://www.kakapo.co/app.html'
  license :isc

  app 'Kakapo.app'
end
