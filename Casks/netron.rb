cask 'netron' do
  version '1.8.2'
  sha256 '01a2a269247067396b0f2549ba072e41be93d5c1543944b51d463ec8f7e29dcc'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '13ff80975dc88ec7152802443e017854ee541c63d61762f902f8b2725a148eaf'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
