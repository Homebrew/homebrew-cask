cask 'kkbox' do
  version '5.2.88-1c04d41'
  sha256 '789e386baff3ad386eb2275322eef8ce85c90908a5e37d23121f1ee83fa93fb4'

  url "https://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'https://www.kkbox.com/'

  app 'KKBOX.app'
end
