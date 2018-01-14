cask 'netron' do
  version '1.3.2'
  sha256 '2172473cca7288b390ce0b4e3938f47ec014b37ca2998c21c29e16c68706b86f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '7016fe689d745cf6b928e15f03d66ac3af25ebb84404ef11653e0740de2bc533'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
