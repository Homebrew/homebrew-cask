cask 'qtox' do
  version '1.14.0'
  sha256 '02865c13377fde03507c6a951f7a013b9b804a2fff84d6eab9ffdc5742ef4cd1'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: '0871516f88b8286ba747d0a92cd2018467b604c5cc3d70c2370fa6220e5fffe6'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
