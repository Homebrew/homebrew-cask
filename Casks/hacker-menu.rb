cask 'hacker-menu' do
  version '1.1.5'
  sha256 'ab7de53e74b4514f46726f6dc3be467a1dd7f320990656b60cbb7ea4dd74bacf'

  # github.com/jingweno/hacker-menu was verified as official when first introduced to the cask
  url "https://github.com/jingweno/hacker-menu/releases/download/v#{version}/hacker-menu-mac.zip"
  appcast 'https://github.com/jingweno/hacker-menu/releases.atom',
          checkpoint: 'a55f652b40c1db009dddf4d3ee763d13fe679d93d062c8c33f5675bad2a944cb'
  name 'Hacker Menu'
  homepage 'https://hackermenu.io/'

  app 'Hacker Menu.app'
end
