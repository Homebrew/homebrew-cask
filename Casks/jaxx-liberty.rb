cask 'jaxx-liberty' do
  version '2.2.6'
  sha256 'a8fc5fc855974eb314b0c2caa88bba6c46f98fcbcc7e75320b7d2aee848dafc5'

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
