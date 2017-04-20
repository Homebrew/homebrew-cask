cask 'jaxx' do
  version '1.2.4'
  sha256 'dd2e5fbb0164ec5dc1702513f27834331f381d3386e423608ee7ce7a73bfe470'

  url "https://jaxx.io/files/#{version}/Jaxx-Installer-v#{version.major_minor}.osx.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
