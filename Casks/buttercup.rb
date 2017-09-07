cask 'buttercup' do
  version '0.20.0'
  sha256 'a59cb86f0a87fcf4d06091aa100f523afd1d00034158d3ec16180c11645e9fec'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '3edcf38a0cff67ae04b4f5f3ae4f0d9fd639d3d84ddb3ef2d8e0ae3a9c590aea'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
