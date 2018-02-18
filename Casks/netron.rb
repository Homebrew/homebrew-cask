cask 'netron' do
  version '1.4.8'
  sha256 '1b096d554fad91e57f6534b886486ca7cb4d20a8b55ea703af8bf447bd9ca56a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '18e0ad29820f933e0b8594c431569eec07f7a8900d55133be5936395dbe96972'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
