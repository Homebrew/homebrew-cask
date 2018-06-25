cask 'brisk' do
  version '1.1.2'
  sha256 '5bc8e1e72cae618045875f1fbed9102413f056ea19b3c46dadf430ae618ae40e'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
