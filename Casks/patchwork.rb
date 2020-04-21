cask 'patchwork' do
  version '3.17.7'
  sha256 'e3ece220cba7931adc6a879d3f2dadcb358cc3cdfeed63b745383e5021244469'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
