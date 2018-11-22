cask 'gisto' do
  version '1.10.16'
  sha256 'e39df10e8e1cbe359f3a300739fdc7f3c3c3af0bb37d5b54840d55350fe3afb6'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
