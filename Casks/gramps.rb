cask 'gramps' do
  version '4.2.3-5'
  sha256 'c667fbed56e2810acc297ffc4e159662d5c263de200230d59aa29b4ef8a463fe'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: '28285dade4610391c10314c879ea5f08621f4462bf63f44d1ad71051f3c2ddd0'
  name 'Gramps'
  homepage 'https://gramps-project.org/'
  license :gpl

  app 'Gramps.app'
end
