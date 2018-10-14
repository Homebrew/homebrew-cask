cask 'gisto' do
  version '1.10.8'
  sha256 'e0d1e1b9e8769c931b416e3867999f00e5571d95cc7f369335335fe9fa788907'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
