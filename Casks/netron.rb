cask 'netron' do
  version '1.4.9'
  sha256 '8d7b4678fc95c55cd39080a3cced30bc6cd4ac989ecbceebb40d4d48c0805cce'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '91d3d66045ed0c6247edacbc5a9ca86bff337211b037beedb0dd5b78bf7d1bbb'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
