cask 'gramps' do
  version '4.2.4-3'
  sha256 '0b422840552e5da933feb69dd7964ed54002ecff8ef4813196fdb74c94cb72b3'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: 'febefb1931afcd9780aa2ec7bc4055c97be88aa01483aee452011e79074e1f19'
  name 'Gramps'
  homepage 'https://gramps-project.org/'

  app 'Gramps.app'
end
