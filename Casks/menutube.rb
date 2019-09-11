cask 'menutube' do
  version '1.4.0'
  sha256 '6c8bfdaf72edd7b62c28ee931a5a67b06e5021702e1d1a9021b7ac22b19c4f51'

  # github.com/edanchenkov/MenuTube was verified as official when first introduced to the cask
  url "https://github.com/edanchenkov/MenuTube/releases/download/#{version}/MenuTube.#{version}.zip"
  appcast 'https://github.com/edanchenkov/MenuTube/releases.atom'
  name 'MenuTube'
  homepage 'https://edanchenkov.github.io/MenuTube/'

  app 'MenuTube.app'
end
