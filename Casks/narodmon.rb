cask 'narodmon' do
  version '3.0.0'
  sha256 '151f98eb73d6a11fb36ae9cbb022c2e2e0d6707297399f207326f8cea3d2ffb2'

  # github.com/niki-timofe/NarodMonOSX was verified as official when first introduced to the cask
  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/v#{version}/NarodMon.app.zip"
  appcast 'https://github.com/niki-timofe/NarodMonOSX/releases.atom',
          checkpoint: '3a17a667718c30c66a8cde6b9761bb8aedb10d816d331b49547603b8454d340f'
  name 'NarodMon'
  homepage 'https://narodmon.ru/'

  app 'Народный мониторинг.app'
end
