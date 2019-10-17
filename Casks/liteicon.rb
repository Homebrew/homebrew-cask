cask 'liteicon' do
  if MacOS.version <= :sierra
    version '3.7.1'
    sha256 'b457521a698a0ef55cd3d9c044c82c28984eeebc20d8baf05a9c21b0fa1df432'
  elsif MacOS.version <= :mojave
    version '3.9'
    sha256 'd185503d1c6cbbc6f770517853bd9ef08dc620f4e7ce3de913251a57e4d450d9'
  else
    version '4.1'
    sha256 '545cff53df31b63fe28e794fb7f45e4c891885f5de57422b1483724f6d7ed4e0'
  end

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml'
  name 'LiteIcon'
  homepage 'https://freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap trash: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
