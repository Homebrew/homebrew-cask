cask 'gramps' do
  version '4.2.3-2'
  sha256 'd916afdbda9426365ba2d0bb1a5471b34a381802a4e2b5923a5e6bf52acf488c'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: '75f4ff9089645705ac8e96202ce6725d970682d53c17d14db08d42b3ad9f0288'
  name 'Gramps'
  homepage 'https://gramps-project.org/'
  license :gpl

  app 'Gramps.app'
end
