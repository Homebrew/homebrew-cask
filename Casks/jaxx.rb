cask 'jaxx' do
  version '1.3.3'
  sha256 'b6060efa747afeca4f7cc2acc32891edf66057ebad5141b127f6b015a0a5799a'

  url "https://jaxx.io/files/#{version}/Jaxx-#{version}.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
