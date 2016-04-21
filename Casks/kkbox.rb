cask 'kkbox' do
  version '5.2.86-0bed81a'
  sha256 '20cabcb212c59658bdbda40eda1b6ef45ace27ae4cedfc1779cfa9d9aa8630b4'

  url "https://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'https://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
