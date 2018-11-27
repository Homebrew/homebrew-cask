cask 'mendeley' do
  version '1.19.3'
  sha256 '895a1d83add19e1a8c471840c3605bbebd85e07eca0a441166e34b25e3df97a1'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
