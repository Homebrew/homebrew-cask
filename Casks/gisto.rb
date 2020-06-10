cask 'gisto' do
  version '1.13.2'
  sha256 '1d314ba1f87202d29b25b2d11a2f832baaf8f0b378e24d6d09de8ef89aeaa308'

  # github.com/Gisto/Gisto/ was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
