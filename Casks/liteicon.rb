cask 'liteicon' do
  if MacOS.version <= :sierra
    version '3.7.1'
    sha256 'b457521a698a0ef55cd3d9c044c82c28984eeebc20d8baf05a9c21b0fa1df432'
  elsif MacOS.version <= :mojave
    version '3.9'
    sha256 'd185503d1c6cbbc6f770517853bd9ef08dc620f4e7ce3de913251a57e4d450d9'
  else
    version '4.0'
    sha256 '9953f02a9a09c57214ca3a0afc3099032b6e152aa1206e9ffce636571d3d88b8'
  end

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml'
  name 'LiteIcon'
  homepage 'https://freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap trash: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
