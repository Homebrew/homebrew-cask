cask 'netron' do
  version '1.9.7'
  sha256 'fe6eb93654cf75aae9283550c331f230471b8de586d06ed2b5576a17e2e27bf1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
