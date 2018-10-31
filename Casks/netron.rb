cask 'netron' do
  version '2.4.1'
  sha256 'cf278f20391acdb8c03c927ac3c25127b1405a7d38eb5a33fe9d32d3501ced91'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
