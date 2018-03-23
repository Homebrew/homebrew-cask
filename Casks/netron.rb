cask 'netron' do
  version '1.6.9'
  sha256 'efa00a7e93b32fe31ced91e9a7bd87b433f0340e87f400c7866524f0dd59b027'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '8774f8ede98f2b1b0038310ca85ab4ccee22269bc3ca1bfade5c1c5822fa2ad0'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
