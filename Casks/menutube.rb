cask 'menutube' do
  version '1.6.1'
  sha256 'b50a106a88b96e9ce98feb99502446ad9ce8fcd610dfb3f479e40030e16a7d42'

  # github.com/edanchenkov/MenuTube/ was verified as official when first introduced to the cask
  url "https://github.com/edanchenkov/MenuTube/releases/download/#{version}/MenuTube-#{version}.dmg"
  appcast 'https://github.com/edanchenkov/MenuTube/releases.atom'
  name 'MenuTube'
  homepage 'https://edanchenkov.github.io/MenuTube/'

  app 'MenuTube.app'
end
