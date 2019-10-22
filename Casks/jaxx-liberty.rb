cask 'jaxx-liberty' do
  version '2.3.0'
  sha256 '4638234b0a21a8c51d0e4fd6aa054aad271dcc2908aa1e7a30c3a7ea2708325c'

  url "https://download-liberty.jaxx.io/Jaxx.Liberty-#{version}.dmg"
  appcast 'https://jaxx.io/downloads.html'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx Liberty.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
