cask 'gisto' do
  version '1.12.4'
  sha256 '98f3061866d89eb5194a2405328f70aaa56efdb7e6ada390244e9f93ef82a858'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
