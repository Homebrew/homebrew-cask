cask 'patchwork' do
  version '3.7.1'
  sha256 '9e0524cab2a74bf07e7f01950e5a00bd9e0a4d9834a55c177beeb3f95d94aac3'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '47a110913c5fa382e4f5f9ac7301eb939cdc8682abe859c3f3d639bd6ab42072'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
