cask 'netron' do
  version '1.9.1'
  sha256 '4d4a01231aea7977471b3c34fab527705fc05067eb6f8b027b0c435d97cc52a6'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
