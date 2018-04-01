cask 'shruplay' do
  version '2015.05.16'
  sha256 'f23e25969e78935d94fbd6a8a3b28ac13fb3d0af9f3caa66fb3451eab9319150'

  url "https://www.pdxpetdesign.com/wp-content/uploads/2016/12/SHRUPlayMac_#{version.dots_to_underscores}.zip"
  name 'PDX Pet Design SHRUPlay'
  homepage 'https://www.pdxpetdesign.com/'

  app 'ShruPlay.app'
end
