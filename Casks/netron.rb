cask 'netron' do
  version '1.6.5'
  sha256 '3764e7fdd15744746fcc3088e331b7407ef78af08045b765abb5112f115c17da'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'e844172d49fc4a535d1813eb2cc614446af15fea85ccddae2b0a13b6a372bb5f'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
