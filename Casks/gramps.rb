cask 'gramps' do
  version '4.2.4-1'
  sha256 '58c655936e4ca021ada3d44e32f52c84b3eac2442b1e2fe4834bd78d3cefc4c6'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: 'febefb1931afcd9780aa2ec7bc4055c97be88aa01483aee452011e79074e1f19'
  name 'Gramps'
  homepage 'https://gramps-project.org/'
  license :gpl

  app 'Gramps.app'
end
