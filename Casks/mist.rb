cask 'mist' do
  version '0.11.0'
  sha256 '45931ab04707121a4e87a2f546c00ca968e6484ddc4b68eebc2165cf9b364d69'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
